# mobile-bff

Service in the **platform** domain of EstateIQ.

**Language:** Go · **Port:** 50004

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mobile-bff/](../../../helm/charts/mobile-bff/) — Helm chart
- [manifests/platform/mobile-bff/](../../../manifests/platform/mobile-bff/) — Raw K8s manifests
