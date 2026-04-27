# rent-service

Service in the leasing domain of EstateIQ.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rent-service/](../../../helm/charts/rent-service/) â€” Helm chart
- [manifests/leasing/rent-service/](../../../manifests/leasing/rent-service/) â€” Raw K8s manifests
