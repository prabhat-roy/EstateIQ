# reit-service

Service in the **investment** domain of EstateIQ.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/reit-service/](../../../helm/charts/reit-service/) — Helm chart
- [manifests/investment/reit-service/](../../../manifests/investment/reit-service/) — Raw K8s manifests
