# tenant-service

Service in the **leasing** domain of EstateIQ.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tenant-service/](../../../helm/charts/tenant-service/) — Helm chart
- [manifests/leasing/tenant-service/](../../../manifests/leasing/tenant-service/) — Raw K8s manifests
