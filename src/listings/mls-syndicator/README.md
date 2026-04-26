# mls-syndicator

Service in the **listings** domain of EstateIQ.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mls-syndicator/](../../../helm/charts/mls-syndicator/) — Helm chart
- [manifests/listings/mls-syndicator/](../../../manifests/listings/mls-syndicator/) — Raw K8s manifests
