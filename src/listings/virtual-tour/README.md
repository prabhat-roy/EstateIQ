# virtual-tour

Service in the **listings** domain of EstateIQ.

**Language:** Go · **Port:** 50043

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/virtual-tour/](../../../helm/charts/virtual-tour/) — Helm chart
- [manifests/listings/virtual-tour/](../../../manifests/listings/virtual-tour/) — Raw K8s manifests
