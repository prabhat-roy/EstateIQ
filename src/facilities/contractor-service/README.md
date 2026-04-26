# contractor-service

Service in the **facilities** domain of EstateIQ.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contractor-service/](../../../helm/charts/contractor-service/) — Helm chart
- [manifests/facilities/contractor-service/](../../../manifests/facilities/contractor-service/) — Raw K8s manifests
