# pm-service

Service in the **property-management** domain of EstateIQ.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pm-service/](../../../helm/charts/pm-service/) — Helm chart
- [manifests/property-management/pm-service/](../../../manifests/property-management/pm-service/) — Raw K8s manifests
