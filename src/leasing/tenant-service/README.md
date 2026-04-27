# tenant-service

Service in the leasing domain of EstateIQ.

Language: Go Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tenant-service/](../../../helm/charts/tenant-service/) â€” Helm chart
- [manifests/leasing/tenant-service/](../../../manifests/leasing/tenant-service/) â€” Raw K8s manifests
