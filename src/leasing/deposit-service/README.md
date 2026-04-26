# deposit-service

Service in the **leasing** domain of EstateIQ.

**Language:** Go · **Port:** 50084

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/deposit-service/](../../../helm/charts/deposit-service/) — Helm chart
- [manifests/leasing/deposit-service/](../../../manifests/leasing/deposit-service/) — Raw K8s manifests
