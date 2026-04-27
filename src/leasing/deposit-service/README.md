# deposit-service

Service in the leasing domain of EstateIQ.

Language: Go Â· Port: 50084

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/deposit-service/](../../../helm/charts/deposit-service/) â€” Helm chart
- [manifests/leasing/deposit-service/](../../../manifests/leasing/deposit-service/) â€” Raw K8s manifests
