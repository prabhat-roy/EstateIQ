# roi-service

Service in the investment domain of EstateIQ.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/roi-service/](../../../helm/charts/roi-service/) â€” Helm chart
- [manifests/investment/roi-service/](../../../manifests/investment/roi-service/) â€” Raw K8s manifests
