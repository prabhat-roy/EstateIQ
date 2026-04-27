# inspection-service

Service in the property-management domain of EstateIQ.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/inspection-service/](../../../helm/charts/inspection-service/) â€” Helm chart
- [manifests/property-management/inspection-service/](../../../manifests/property-management/inspection-service/) â€” Raw K8s manifests
