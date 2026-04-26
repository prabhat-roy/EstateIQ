# accounting-service

Service in the **finance** domain of EstateIQ.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/accounting-service/](../../../helm/charts/accounting-service/) — Helm chart
- [manifests/finance/accounting-service/](../../../manifests/finance/accounting-service/) — Raw K8s manifests
