# parking-service

Service in the **smart-building** domain of EstateIQ.

**Language:** Go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parking-service/](../../../helm/charts/parking-service/) — Helm chart
- [manifests/smart-building/parking-service/](../../../manifests/smart-building/parking-service/) — Raw K8s manifests
