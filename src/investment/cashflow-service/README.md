# cashflow-service

Service in the **investment** domain of EstateIQ.

**Language:** Go · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cashflow-service/](../../../helm/charts/cashflow-service/) — Helm chart
- [manifests/investment/cashflow-service/](../../../manifests/investment/cashflow-service/) — Raw K8s manifests
