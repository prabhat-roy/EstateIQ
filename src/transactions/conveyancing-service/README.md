# conveyancing-service

Service in the **transactions** domain of EstateIQ.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/conveyancing-service/](../../../helm/charts/conveyancing-service/) — Helm chart
- [manifests/transactions/conveyancing-service/](../../../manifests/transactions/conveyancing-service/) — Raw K8s manifests
