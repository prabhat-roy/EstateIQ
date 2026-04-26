# lease-service

Service in the **leasing** domain of EstateIQ.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lease-service/](../../../helm/charts/lease-service/) — Helm chart
- [manifests/leasing/lease-service/](../../../manifests/leasing/lease-service/) — Raw K8s manifests
