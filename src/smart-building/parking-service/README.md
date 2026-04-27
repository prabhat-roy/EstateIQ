# parking-service

Service in the smart-building domain of EstateIQ.

Language: Go Â· Port: 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parking-service/](../../../helm/charts/parking-service/) â€” Helm chart
- [manifests/smart-building/parking-service/](../../../manifests/smart-building/parking-service/) â€” Raw K8s manifests
