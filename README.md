# EstateIQ â€” Enterprise Real Estate & Property Management Platform

Enterprise-grade, cloud-native real estate platform built on open source technologies. Covers
the full real estate value chain â€” property listings, transactions, lease management, facilities
management, valuation, construction project management, proptech services, and investment
analytics â€” designed for real estate agencies, property developers, REITs, commercial landlords,
property management firms, and real estate investment platforms. Integrates with MLS/portals and
government land registries.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | PMS Â· CRM Â· Proptech Â· REIT Analytics Â· Facilities Management      |
| Domains           | 17 business domains                                                |
| Services          | 175+ microservices                                                 |
| Languages         | Go, Java, Kotlin, Python, Node.js, TypeScript, Rust                |
| Standards         | RETS/RESO (MLS), IFC (BIM), IDX, MISMO, GeoJSON, OGC WFS          |
| Compliance        | GDPR, CCPA, AML/KYC (property transactions), FIRPTA (US foreign), |
| Databases         | PostgreSQL + PostGIS, MongoDB, Redis, Elasticsearch, TimescaleDB   |
| Message Broker    | Apache Kafka, RabbitMQ, NATS JetStream                             |
| Cloud             | AWS (primary), GCP (geospatial), Cloudflare (global CDN)           |
| Orchestration     | Kubernetes (EKS / GKE)                                             |
| Frontend          | Next.js (property portal), React (agent dashboard), Angular (investor), Flutter (mobile) |

---

## Business Domains

| # | Domain                    | Key Services                                                           |
|---|---------------------------|------------------------------------------------------------------------|
| 1 | Property Listings         | listing-service, search-service, media-service, portal-sync, mls      |
| 2 | Sales & Transactions      | deal-service, offer-service, conveyancing, escrow-service, closing    |
| 3 | Leasing & Rentals         | lease-service, tenant-service, rent-service, renewal-service, deposit |
| 4 | Property Management       | pm-service, maintenance-service, inspection, communication, portal    |
| 5 | Facilities Management     | facilities-service, asset-service, work-order, contractor, compliance |
| 6 | Valuation & Appraisal     | valuation-service, avm-service, comparables, market-analysis, report  |
| 7 | Construction Management   | project-service, milestone-service, contractor, budget, punch-list    |
| 8 | Investment & Portfolio     | portfolio-service, reit-service, roi-service, distribution, cashflow  |
| 9 | Customer & CRM            | contact-service, lead-service, pipeline-service, activity, nurture    |
| 10 | Finance & Billing         | payment-service, invoice-service, accounting, commission, trust       |
| 11 | Legal & Compliance        | kyc-service, aml-service, title-service, compliance, land-registry   |
| 12 | Smart Building            | iot-gateway, energy-service, access-service, parking, occupancy       |
| 13 | Analytics & Market Data   | market-analytics, price-prediction, demand-heat-map, yield-analytics  |
| 14 | Document Management       | document-service, contract-service, esign-service, archive, template  |
| 15 | Marketing & Portals       | campaign-service, portal-integration, virtual-tour, floor-plan       |
| 16 | Identity & Access         | auth-service, agent-sso, investor-sso, tenant-sso, mfa, kyc          |
| 17 | Platform                  | api-gateway, portal-bff, agent-bff, investor-bff, graphql-gateway     |

---

## Architecture

```
    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
    â”‚              Cloudflare Edge (WAF + Global CDN)                  â”‚
    â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                               â”‚
    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
    â”‚                       API Gateway                                â”‚
    â”‚          (OAuth2 Â· mTLS Â· Rate Limit Â· Geo Routing)              â”‚
    â””â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
         â”‚              â”‚               â”‚              â”‚
  â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”    â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”   â”Œâ”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”   â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
  â”‚Property â”‚    â”‚  Agent   â”‚   â”‚ Investor â”‚   â”‚  Tenant App    â”‚
  â”‚ Portal  â”‚    â”‚Dashboard â”‚   â”‚ Portal   â”‚   â”‚  (Flutter)     â”‚
  â”‚(Next.js)â”‚    â”‚ (React)  â”‚   â”‚(Angular) â”‚   â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
  â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”˜    â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”˜   â””â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”˜          â”‚
         â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”´â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”´â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                                â”‚ gRPC (Istio mTLS)
    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
    â”‚                Internal gRPC Mesh (Istio mTLS)                 â”‚
    â”‚  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”‚
    â”‚  â”‚ Listings â”‚  â”‚  Leasing   â”‚  â”‚ Valuation  â”‚  â”‚ Investment â”‚  â”‚
    â”‚  â”‚ & Search â”‚  â”‚  & PM      â”‚  â”‚  & AVM     â”‚  â”‚ Analytics  â”‚  â”‚
    â”‚  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â”‚
    â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                           â”‚ Kafka (Property Events)
          â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
          â”‚                â”‚                â”‚
 â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â” â”Œâ”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â” â”Œâ”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
 â”‚  MLS / Portal â”‚ â”‚  Smart         â”‚ â”‚  Analytics Platform   â”‚
 â”‚  Syndication  â”‚ â”‚  Building IoT  â”‚ â”‚  ClickHouse + PostGIS â”‚
 â”‚  (Zillow etc) â”‚ â”‚  (MQTT/OPC-UA) â”‚ â”‚  Airflow + Superset   â”‚
 â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜ â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜ â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
```

---

## Tech Stack

### Real Estate Standards & Protocols
- RESO (RETS): Real Estate Standards Organization â€” MLS data syndication, field standardization, data dictionary
- IDX: Internet Data Exchange â€” MLS listing syndication to agent websites and portals
- IFC (BIM): Industry Foundation Classes â€” building information model for construction project management
- MISMO: Mortgage Industry Standards Maintenance Organization â€” loan origination and appraisal data
- GeoJSON / PostGIS: Geospatial property boundaries, catchment areas, flood zones, school districts
- OGC WFS: Web Feature Service â€” geospatial data API for planning zones and land use data

### Infrastructure
- Kubernetes: EKS + GKE â€” GKE used for GCP BigQuery and geospatial workloads
- Geospatial: PostGIS (property boundaries, heatmaps); Google Maps Platform API; Mapbox (custom portal maps)
- Search: Elasticsearch (geospatial property search with radius, polygon, and facet filtering)
- Virtual Tours: 360Â° virtual tour processing (Matterport-compatible, open-source Pannellum viewer)
- BIM Processing: IFC.js + IfcOpenShell â€” parse and serve BIM models in browser for construction management

### CI/CD & GitOps
- CI: Jenkins (primary), GitHub Actions, GitLab CI
- CD: ArgoCD (App-of-Apps), Argo Rollouts (canary â€” listing search is the critical path)
- IaC: Terraform (EKS/GKE + PostGIS RDS), Crossplane, Ansible
- Secrets: HashiCorp Vault (MLS API credentials, payment gateway keys, esign provider keys)

### Observability
- Metrics: Prometheus + Grafana (search latency, listing sync lag, lease payment success rate)
- Logs: Loki + Fluent Bit (PII masked â€” tenant personal data, financial transactions)
- Traces: Jaeger + OpenTelemetry (trace property search â†’ listing view â†’ lead capture â†’ deal)
- Market Dashboard: Real-time ClickHouse â€” average price/sqft by neighbourhood, days-on-market trends
- SLOs: Property search < 500ms (P95), listing sync to portals < 15min, AVM valuation < 5s

### Security (AML + GDPR)
- Identity: Keycloak (tenant/buyer SSO, agent SAML federation, investor portal MFA)
- KYC/AML: Know Your Customer and Anti-Money Laundering for property transactions (UK HMRC, EU AMLD6)
- E-Signature: DocuSign-compatible open-source e-signature (esign-service) â€” legally binding lease/sale contracts
- Network: Cilium eBPF, Istio mTLS, Cloudflare WAF
- Scanning: Trivy, Semgrep, OWASP ZAP, SonarQube

### AI / ML (Property Intelligence)
- Automated Valuation Model (AVM): Ensemble model (XGBoost + comparables + location features) â€” instant property valuation within 2% MAPE
- Price Prediction: LSTM on historical transaction data + macroeconomic indicators â€” 12-month price forecast by area
- Lead Scoring: Gradient Boosting on engagement signals â€” ranks leads by conversion probability for agents
- Demand Heatmap: Spatial ML model â€” visualises buyer/renter demand intensity by neighbourhood, updated daily
- Churn Risk (Tenants): Survival analysis on lease behaviour â€” predicts non-renewal 90 days before lease end
- Smart Search Ranking: Two-tower neural network (buyer preference embedding + property embedding) â€” personalised search results
- Maintenance Prediction: IoT sensor data + maintenance history â†’ predicts building system failures before they occur

---

## Key Design Decisions

1. PostGIS as the spatial backbone: All property searches are polygon/radius queries in PostGIS â€” no external geospatial service; enables custom catchment areas, flood zones, transport isochrones
2. MLS syndication as event stream: Listing creates/updates emit Kafka events â†’ syndication service pushes to Zillow, Rightmove, Idealista etc. in parallel â€” one update, all portals updated within 15 minutes
3. AML at transaction initiation: KYC/AML checks run when deal is created (not at closing) â€” gives compliance team time to resolve issues without blocking the deal timeline
4. Trust account segregation: Tenant deposits and client funds managed in segregated trust accounts with full audit trail â€” regulatory requirement in UK (RICS), Australia (REIA), and UAE
5. BIM-linked facilities management: Property assets (HVAC, electrical, plumbing) linked to BIM elements â€” maintenance history tracked against specific building components, not just free-text location
6. AVM confidence scoring: Every valuation includes a confidence interval and comparables used â€” low-confidence valuations flagged for human review rather than blindly served to customers

---

## Status

- [ ] Architecture design & property data model (PostGIS)
- [ ] Service registry & proto definitions
- [ ] MLS integration (RESO Web API)
- [ ] Property search (Elasticsearch + PostGIS spatial)
- [ ] Lease management core
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev stack)
- [ ] Helm charts (per-service)
- [ ] CI/CD pipelines
- [ ] GitOps (ArgoCD)
- [ ] AVM (Automated Valuation Model)
- [ ] Smart building IoT integration
