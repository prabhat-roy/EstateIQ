# asset-service

Service in the **facilities** domain of EstateIQ.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/asset-service/](../../../helm/charts/asset-service/) — Helm chart
- [manifests/facilities/asset-service/](../../../manifests/facilities/asset-service/) — Raw K8s manifests
