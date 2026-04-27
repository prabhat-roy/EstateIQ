# deal-service

Service in the transactions domain of EstateIQ.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/deal-service/](../../../helm/charts/deal-service/) â€” Helm chart
- [manifests/transactions/deal-service/](../../../manifests/transactions/deal-service/) â€” Raw K8s manifests
