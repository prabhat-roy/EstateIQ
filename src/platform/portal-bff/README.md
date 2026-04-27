# portal-bff

Service in the platform domain of EstateIQ.

Language: Go Â· Port: 50003

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portal-bff/](../../../helm/charts/portal-bff/) â€” Helm chart
- [manifests/platform/portal-bff/](../../../manifests/platform/portal-bff/) â€” Raw K8s manifests
