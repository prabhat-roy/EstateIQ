# portal-sync

Service in the listings domain of EstateIQ.

Language: Go Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portal-sync/](../../../helm/charts/portal-sync/) â€” Helm chart
- [manifests/listings/portal-sync/](../../../manifests/listings/portal-sync/) â€” Raw K8s manifests
