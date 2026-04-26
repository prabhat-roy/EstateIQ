# deal-service

Service in the **transactions** domain of EstateIQ.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/deal-service/](../../../helm/charts/deal-service/) — Helm chart
- [manifests/transactions/deal-service/](../../../manifests/transactions/deal-service/) — Raw K8s manifests
