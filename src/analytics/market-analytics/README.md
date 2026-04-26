# market-analytics

Service in the **analytics** domain of EstateIQ.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/market-analytics/](../../../helm/charts/market-analytics/) — Helm chart
- [manifests/analytics/market-analytics/](../../../manifests/analytics/market-analytics/) — Raw K8s manifests
