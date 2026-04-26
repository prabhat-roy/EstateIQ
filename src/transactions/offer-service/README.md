# offer-service

Service in the **transactions** domain of EstateIQ.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/offer-service/](../../../helm/charts/offer-service/) — Helm chart
- [manifests/transactions/offer-service/](../../../manifests/transactions/offer-service/) — Raw K8s manifests
