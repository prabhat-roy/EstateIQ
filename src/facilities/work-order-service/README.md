# work-order-service

Service in the facilities domain of EstateIQ.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/work-order-service/](../../../helm/charts/work-order-service/) â€” Helm chart
- [manifests/facilities/work-order-service/](../../../manifests/facilities/work-order-service/) â€” Raw K8s manifests
