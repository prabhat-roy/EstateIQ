# maintenance-service

Service in the property-management domain of EstateIQ.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/maintenance-service/](../../../helm/charts/maintenance-service/) â€” Helm chart
- [manifests/property-management/maintenance-service/](../../../manifests/property-management/maintenance-service/) â€” Raw K8s manifests
