# demand-heatmap

Service in the **analytics** domain of EstateIQ.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/demand-heatmap/](../../../helm/charts/demand-heatmap/) — Helm chart
- [manifests/analytics/demand-heatmap/](../../../manifests/analytics/demand-heatmap/) — Raw K8s manifests
