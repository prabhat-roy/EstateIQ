# roi-service

Service in the **investment** domain of EstateIQ.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roi-service/](../../../helm/charts/roi-service/) — Helm chart
- [manifests/investment/roi-service/](../../../manifests/investment/roi-service/) — Raw K8s manifests
