# Source Code â€” EstateIQ

Backend services organised by business domain. Each domain has its own folder; each
service inside a domain has its own subfolder with a complete project layout
(Dockerfile, Makefile, `.env.example`, language-specific build file, source tree).

## Domains (17)

- [`platform/`](platform/) â€” 5 services (api-gateway, BFFs, GraphQL gateway)
- [`identity/`](identity/) â€” 5 services (auth, agent/investor/tenant SSO, MFA)
- [`listings/`](listings/) â€” 6 services (listing, search, media, MLS, IDX, virtual-tour)
- [`transactions/`](transactions/) â€” 5 services (deal, offer, conveyancing, escrow, closing)
- [`leasing/`](leasing/) â€” 5 services (lease, tenant, rent, renewal, deposit)
- [`property-management/`](property-management/) â€” 5 services
- [`facilities/`](facilities/) â€” 5 services (incl. BIM)
- [`valuation/`](valuation/) â€” 5 services (AVM is here)
- [`construction/`](construction/) â€” 4 services
- [`investment/`](investment/) â€” 5 services (REIT, ROI, distributions)
- [`crm/`](crm/) â€” 4 services
- [`finance/`](finance/) â€” 5 services (incl. trust-account-service, append-only)
- [`compliance/`](compliance/) â€” 5 services (KYC, AML, title, land registry)
- [`smart-building/`](smart-building/) â€” 4 services (IoT)
- [`analytics/`](analytics/) â€” 4 services (ML â€” price prediction, demand heatmap)
- [`document/`](document/) â€” 4 services (esign is here)
- [`marketing/`](marketing/) â€” 4 services

Total: 80 services.

## Conventions

- One folder per service; one main entry file per language (`main.go`, `Application.java`, `Application.kt`, `main.py`, `index.js`, `src/main.rs`)
- Every service exposes `/healthz` returning `{ "status": "ok" }`
- Every service ships a `Dockerfile` (multi-stage, non-root, minimal base) and a `Makefile`
- gRPC contracts live in [`../proto/<domain>/<service>.proto`](../proto/)
- Kafka schemas live in [`../events/`](../events/)

## Languages used (per CLAUDE.md)

| Language | Where |
|---|---|
| Go (1.24) | High-throughput stateless services: gateway, BFFs, search, listing tracker, IoT gateway |
| Java 21 / Spring Boot 3.3 | Stateful business services: lease, transaction, KYC, AML, accounting, trust-account |
| Kotlin / Spring Boot 3.3 | Valuation, AVM rule engine, REIT analytics |
| Python 3.12 / FastAPI | ML/AI: price-prediction LSTM, lead scoring, demand heatmap |
| Node.js 22 / Fastify | Notifications, esign callbacks, virtual tour processing, marketing webhooks |
| Rust 1.80 / Actix | High-perf media (360-tour, video transcoding), cryptographic services (auth, SSO) |
