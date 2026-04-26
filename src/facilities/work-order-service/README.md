# work-order-service

Service in the **facilities** domain of EstateIQ.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/work-order-service/](../../../helm/charts/work-order-service/) — Helm chart
- [manifests/facilities/work-order-service/](../../../manifests/facilities/work-order-service/) — Raw K8s manifests
