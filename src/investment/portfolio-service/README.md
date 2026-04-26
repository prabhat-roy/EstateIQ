# portfolio-service

Service in the **investment** domain of EstateIQ.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portfolio-service/](../../../helm/charts/portfolio-service/) — Helm chart
- [manifests/investment/portfolio-service/](../../../manifests/investment/portfolio-service/) — Raw K8s manifests
