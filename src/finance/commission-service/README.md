# commission-service

Service in the **finance** domain of EstateIQ.

**Language:** Go · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/commission-service/](../../../helm/charts/commission-service/) — Helm chart
- [manifests/finance/commission-service/](../../../manifests/finance/commission-service/) — Raw K8s manifests
