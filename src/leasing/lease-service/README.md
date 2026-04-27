# lease-service

Service in the leasing domain of EstateIQ.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lease-service/](../../../helm/charts/lease-service/) â€” Helm chart
- [manifests/leasing/lease-service/](../../../manifests/leasing/lease-service/) â€” Raw K8s manifests
