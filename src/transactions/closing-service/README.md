# closing-service

Service in the **transactions** domain of EstateIQ.

**Language:** Go · **Port:** 50064

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/closing-service/](../../../helm/charts/closing-service/) — Helm chart
- [manifests/transactions/closing-service/](../../../manifests/transactions/closing-service/) — Raw K8s manifests
