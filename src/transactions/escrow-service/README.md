# escrow-service

Service in the **transactions** domain of EstateIQ.

**Language:** Go · **Port:** 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/escrow-service/](../../../helm/charts/escrow-service/) — Helm chart
- [manifests/transactions/escrow-service/](../../../manifests/transactions/escrow-service/) — Raw K8s manifests
