# commission-service

Service in the finance domain of EstateIQ.

Language: Go Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/commission-service/](../../../helm/charts/commission-service/) â€” Helm chart
- [manifests/finance/commission-service/](../../../manifests/finance/commission-service/) â€” Raw K8s manifests
