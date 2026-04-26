# inspection-service

Service in the **property-management** domain of EstateIQ.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) — Helm chart
- [manifests/property-management/inspection-service/](../../../manifests/property-management/inspection-service/) — Raw K8s manifests
