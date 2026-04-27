# reit-service

Service in the investment domain of EstateIQ.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/reit-service/](../../../helm/charts/reit-service/) â€” Helm chart
- [manifests/investment/reit-service/](../../../manifests/investment/reit-service/) â€” Raw K8s manifests
