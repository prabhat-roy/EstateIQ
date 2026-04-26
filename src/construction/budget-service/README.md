# budget-service

Service in the **construction** domain of EstateIQ.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/budget-service/](../../../helm/charts/budget-service/) — Helm chart
- [manifests/construction/budget-service/](../../../manifests/construction/budget-service/) — Raw K8s manifests
