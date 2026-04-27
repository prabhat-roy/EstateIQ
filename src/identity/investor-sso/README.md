# investor-sso

Service in the identity domain of EstateIQ.

Language: Go Â· Port: 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/investor-sso/](../../../helm/charts/investor-sso/) â€” Helm chart
- [manifests/identity/investor-sso/](../../../manifests/identity/investor-sso/) â€” Raw K8s manifests
