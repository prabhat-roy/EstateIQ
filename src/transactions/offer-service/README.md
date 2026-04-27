# offer-service

Service in the transactions domain of EstateIQ.

Language: Go Â· Port: 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/offer-service/](../../../helm/charts/offer-service/) â€” Helm chart
- [manifests/transactions/offer-service/](../../../manifests/transactions/offer-service/) â€” Raw K8s manifests
