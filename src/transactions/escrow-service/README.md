# escrow-service

Service in the transactions domain of EstateIQ.

Language: Go Â· Port: 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/escrow-service/](../../../helm/charts/escrow-service/) â€” Helm chart
- [manifests/transactions/escrow-service/](../../../manifests/transactions/escrow-service/) â€” Raw K8s manifests
