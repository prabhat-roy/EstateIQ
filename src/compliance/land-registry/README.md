# land-registry

Service in the **compliance** domain of EstateIQ.

**Language:** Go · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/land-registry/](../../../helm/charts/land-registry/) — Helm chart
- [manifests/compliance/land-registry/](../../../manifests/compliance/land-registry/) — Raw K8s manifests
