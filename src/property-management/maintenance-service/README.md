# maintenance-service

Service in the **property-management** domain of EstateIQ.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-service/](../../../helm/charts/maintenance-service/) — Helm chart
- [manifests/property-management/maintenance-service/](../../../manifests/property-management/maintenance-service/) — Raw K8s manifests
