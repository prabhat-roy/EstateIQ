# portal-sync

Service in the **listings** domain of EstateIQ.

**Language:** Go · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portal-sync/](../../../helm/charts/portal-sync/) — Helm chart
- [manifests/listings/portal-sync/](../../../manifests/listings/portal-sync/) — Raw K8s manifests
