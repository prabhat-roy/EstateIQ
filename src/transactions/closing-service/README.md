# closing-service

Service in the transactions domain of EstateIQ.

Language: Go Â· Port: 50064

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/closing-service/](../../../helm/charts/closing-service/) â€” Helm chart
- [manifests/transactions/closing-service/](../../../manifests/transactions/closing-service/) â€” Raw K8s manifests
