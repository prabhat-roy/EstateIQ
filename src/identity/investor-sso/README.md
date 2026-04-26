# investor-sso

Service in the **identity** domain of EstateIQ.

**Language:** Go · **Port:** 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/investor-sso/](../../../helm/charts/investor-sso/) — Helm chart
- [manifests/identity/investor-sso/](../../../manifests/identity/investor-sso/) — Raw K8s manifests
