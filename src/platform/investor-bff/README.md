# investor-bff

Service in the **platform** domain of EstateIQ.

**Language:** Go · **Port:** 50002

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/investor-bff/](../../../helm/charts/investor-bff/) — Helm chart
- [manifests/platform/investor-bff/](../../../manifests/platform/investor-bff/) — Raw K8s manifests
