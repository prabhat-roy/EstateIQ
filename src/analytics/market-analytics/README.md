# market-analytics

Service in the analytics domain of EstateIQ.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/market-analytics/](../../../helm/charts/market-analytics/) â€” Helm chart
- [manifests/analytics/market-analytics/](../../../manifests/analytics/market-analytics/) â€” Raw K8s manifests
