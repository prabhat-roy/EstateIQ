# access-service

Service in the smart-building domain of EstateIQ.

Language: Go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/access-service/](../../../helm/charts/access-service/) â€” Helm chart
- [manifests/smart-building/access-service/](../../../manifests/smart-building/access-service/) â€” Raw K8s manifests
