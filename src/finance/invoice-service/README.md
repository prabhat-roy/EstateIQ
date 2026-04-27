# invoice-service

Service in the finance domain of EstateIQ.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) â€” Helm chart
- [manifests/finance/invoice-service/](../../../manifests/finance/invoice-service/) â€” Raw K8s manifests
