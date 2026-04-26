# portal-integration

Service in the **marketing** domain of EstateIQ.

**Language:** Go · **Port:** 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portal-integration/](../../../helm/charts/portal-integration/) — Helm chart
- [manifests/marketing/portal-integration/](../../../manifests/marketing/portal-integration/) — Raw K8s manifests
