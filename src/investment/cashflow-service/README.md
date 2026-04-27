# cashflow-service

Service in the investment domain of EstateIQ.

Language: Go Â· Port: 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cashflow-service/](../../../helm/charts/cashflow-service/) â€” Helm chart
- [manifests/investment/cashflow-service/](../../../manifests/investment/cashflow-service/) â€” Raw K8s manifests
