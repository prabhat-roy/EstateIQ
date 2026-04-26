# tenant-sso

Service in the **identity** domain of EstateIQ.

**Language:** Go · **Port:** 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tenant-sso/](../../../helm/charts/tenant-sso/) — Helm chart
- [manifests/identity/tenant-sso/](../../../manifests/identity/tenant-sso/) — Raw K8s manifests
