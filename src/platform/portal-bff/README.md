# portal-bff

Service in the **platform** domain of EstateIQ.

**Language:** Go · **Port:** 50003

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portal-bff/](../../../helm/charts/portal-bff/) — Helm chart
- [manifests/platform/portal-bff/](../../../manifests/platform/portal-bff/) — Raw K8s manifests
