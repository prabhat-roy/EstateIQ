# tenant-sso

Service in the identity domain of EstateIQ.

Language: Go Â· Port: 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tenant-sso/](../../../helm/charts/tenant-sso/) â€” Helm chart
- [manifests/identity/tenant-sso/](../../../manifests/identity/tenant-sso/) â€” Raw K8s manifests
