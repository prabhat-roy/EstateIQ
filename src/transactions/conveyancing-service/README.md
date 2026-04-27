# conveyancing-service

Service in the transactions domain of EstateIQ.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/conveyancing-service/](../../../helm/charts/conveyancing-service/) â€” Helm chart
- [manifests/transactions/conveyancing-service/](../../../manifests/transactions/conveyancing-service/) â€” Raw K8s manifests
