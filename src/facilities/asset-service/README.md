# asset-service

Service in the facilities domain of EstateIQ.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/asset-service/](../../../helm/charts/asset-service/) â€” Helm chart
- [manifests/facilities/asset-service/](../../../manifests/facilities/asset-service/) â€” Raw K8s manifests
