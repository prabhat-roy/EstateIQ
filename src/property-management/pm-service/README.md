# pm-service

Service in the property-management domain of EstateIQ.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pm-service/](../../../helm/charts/pm-service/) â€” Helm chart
- [manifests/property-management/pm-service/](../../../manifests/property-management/pm-service/) â€” Raw K8s manifests
