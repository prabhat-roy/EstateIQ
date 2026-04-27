# AI_PLAN.md â€” EstateIQ (Real Estate & Property Management Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the EstateIQ-specific specialisation.

---

## 1. Why AI in EstateIQ

Real estate is a high-stakes, low-data-velocity domain â€” wrong AVM by 5%
costs the buyer / seller real money, and bad lead-scoring sinks broker
margins. EstateIQ AI must be:

- Explainable (every AVM ships with confidence interval + comparables).
- Spatial-first (PostGIS embeddings, isochrone reasoning).
- Compliant (AML/KYC + GDPR/CCPA + RICS / REIA trust-account audit).
- Multimodal (listings = text + images + video + 360Â° + floor plans + BIM).

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | AVM (automated valuation) with confidence interval | valuation | XGBoost + spatial K-NN + LSTM ensemble | <500 ms |
| 2 | Demand heatmap (price per sqft prediction) | analytics | Graph regression + PostGIS spatial features | nightly |
| 3 | Lead scoring & conversion prediction | crm | LightGBM + CRM event embeddings | <200 ms |
| 4 | Listing description auto-generation (multilingual) | listings, marketing | Llama 3.1 70B + property-fact grounding | <3 s |
| 5 | Listing image enhancement & virtual staging | listings, media | SDXL + ControlNet + Real-ESRGAN | <8 s/image |
| 6 | KYC document verification (passport + utility bill) | compliance | Donut + LayoutLMv3 + face match (InsightFace) | <2 s |
| 7 | AML transaction-pattern detection | compliance | Graph neural net (PyG) | nightly batch |
| 8 | Floor-plan to BIM/IFC structuring | construction, facilities | YOLO + LayoutParser + Llama 3.1 | <30 s/plan |
| 9 | Comparable-properties retrieval | valuation, listings | E5-large embeddings + Qdrant + spatial filter | <300 ms |
| 10 | 360Â° tour quality scoring & re-shoot suggestions | listings, media | CLIP + custom CV scorer | <2 s/scene |
| 11 | Conversational property search ("3-bed near tube under Â£600k") | listings, search | Llama 3.1 70B + structured query gen | <1.2 s |
| 12 | Smart-building anomaly detection (energy, occupancy) | smart-building | Isolation Forest on TimescaleDB | streaming |

---

## 3. Hierarchical Agent Architecture

Reuses the OpenClaw agent platform, Paperclip orchestrator, and
NemoClaw sandbox names from `ShopOS/AI.md`.

### Tier 0 â€” Master Architect Agent

- `estate-architect` (OpenClaw + Llama 3.1 70B, 128k ctx).
- Owns: research new AI tooling, propose new services, on-board Tier-1
  leads, retire obsolete agents, weekly written report.
- Read-only on prod; writes to `staging-gitops` only.

### Tier 1 â€” Division Leads (5 agents)

| Agent | Scope |
|-------|-------|
| `estate-dev-lead`        | Backend/frontend service code |
| `estate-devops-lead`     | Helm, GitOps, infra, CI |
| `estate-devsecops-lead`  | OPA, Vault, Cilium, Falco, AML/KYC controls |
| `estate-dataml-lead`     | AVM training, feature store, drift |
| `estate-platform-lead`   | Cross-cutting (idempotency, saga, outbox) |

### Tier 2 â€” Specialist Agents

By language: `go-agent`, `java-agent`, `kotlin-agent`, `python-agent`,
`node-agent`, `rust-agent`, `typescript-agent`. Lint, test, dep upgrades,
CVE fixes, doc gen, refactor proposals.

By tool â€” one agent per OSS tool: PostgreSQL/PostGIS, MongoDB, Redis,
Elasticsearch, TimescaleDB, MinIO, Kafka, NATS, RabbitMQ, Vault, Keycloak,
OPA, Kyverno, Falco, Cilium, Istio, ArgoCD, Argo Rollouts, Argo Workflows,
Prometheus, Grafana, Loki, Jaeger, Tempo, OpenTelemetry, Trivy, Cosign,
GeoServer, MapLibre, Strapi-CMS, Camunda, Druid, Pulsar, OpenFGA, Wazuh.

By service â€” one agent per microservice (175+). Bound to
`src/<domain>/<service>/`. Owns README, OpenAPI, test coverage, CHANGELOG,
deps, /healthz wiring.

### Tier 3 â€” Ephemeral Workers

Spawned per Argo Workflows job (run AVM retraining, generate migration,
write a runbook). Live <30 minutes. Output reviewed by a Tier-2 agent.

### Lifecycle (every agent)

Research â†’ Document â†’ Implement â†’ Test â†’ Review â†’ Deploy â†’ Monitor â†’
Respond â†’ Upgrade â†’ Report. Same flow as ShopOS. Weekly markdown report
committed to `ai/reports/`.

---

## 4. Separate AI Infrastructure

```
ai-platform/
â”œâ”€â”€ cluster: estate-ai-{aws,gcp,azure}    â† GPU node pools, taint=ai-only
â”œâ”€â”€ namespace: estate-ai-control           â† Paperclip
â”œâ”€â”€ namespace: estate-ai-agents            â† OpenClaw runtime
â”œâ”€â”€ namespace: estate-ai-sandbox           â† NemoClaw
â”œâ”€â”€ namespace: estate-ai-models            â† vLLM, Ollama, LiteLLM
â”œâ”€â”€ namespace: estate-ai-data              â† Qdrant (spatial), Weaviate (multimodal)
â”œâ”€â”€ namespace: estate-ai-obs               â† Langfuse, Phoenix
â””â”€â”€ namespace: estate-ai-pipelines         â† Argo Workflows
```

### Hardware

- AWS: 2Ã— `g5.12xlarge` for inference; 1Ã— `p4d.24xlarge` for AVM
  retraining + image diffusion. Spot pool for batch.
- GCP / Azure: equivalent A100 / L4 pools. Identical Helm overlays.

### Software stack

| Layer | Tool | Purpose |
|-------|------|---------|
| Inference | vLLM | LLM serving |
| Image gen | ComfyUI + SDXL | Virtual staging, listing image enhancement |
| Local dev | Ollama | Offline POCs |
| Gateway | LiteLLM | OpenAI-compatible, per-team quota |
| Orchestrator | Paperclip | Task queue, agent inbox, audit |
| Agent platform | OpenClaw | Llama 3.1 70B agent runtime |
| Sandbox | NemoClaw | NeMo Guardrails |
| Vector | Qdrant | Comparables, listing embeddings (with PostGIS join) |
| Vector | Weaviate | Multimodal (text + image + floor-plan) |
| MLOps | MLflow | AVM model registry, experiment tracking |
| LLM obs | Langfuse | Trace, cost, eval |
| LLM obs | Phoenix | OTel-native tracing |
| Workflows | Argo Workflows | AVM retraining, batch inference |
| Feature store | Feast | Property + market features |
| Drift | Evidently | AVM drift, listing-price-distribution shift |

### Data isolation

- AVM training data lake in MinIO, encrypted (Vault Transit).
- KYC document store: separate MinIO bucket, region-locked, retention 7 yrs.
- Vector DB sharded per market (UK / EU / AU / UAE / IN) â€” no cross-market
  retrieval to keep listing-comp logic legally local.
- Hashed customer-ID in every Langfuse / Paperclip trace.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| GDPR / CCPA | PII tokenisation; right-to-erasure handler in Paperclip |
| AML / AMLD6 (EU) / HMRC (UK) | KYC agent decisions logged immutably; all flagged cases reviewed by humans |
| RICS / REIA / UAE trust account | Append-only ledger; AI never writes to ledger |
| Fair Housing / Equality Act | NemoClaw blocks discriminatory phrasing in generated listings |
| AVM responsibility | Every AVM output ships with confidence interval + 3+ comparables; <70% confidence flags human review |
| No autonomous prod writes | Tool-calls to write APIs require human approval token |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `estate-ai-*` cluster up on AWS; vLLM serving Llama 3.1 70B |
| 2 | Paperclip + NemoClaw + Langfuse; Tier-0 architect live |
| 3 | Tier-1 division leads; first AVM model on MLflow |
| 4 | Per-language Tier-2 agents; dep-upgrade PR flow |
| 5 | Per-tool Tier-2 agents; first AVM canary in shadow mode |
| 6 | Per-service Tier-2 agents (listings â†’ valuation â†’ crm) |
| 7 | First prod AI: AVM v1, conversational property search |
| 8 | Lead scoring, demand heatmap, multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- Infra: $3,800 â€“ $6,200 / month per primary cloud
- No subscription LLM spend
- AVM retraining: $400 / month spot GPU

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
