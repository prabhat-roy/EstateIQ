# access-service

Service in the **smart-building** domain of EstateIQ.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/access-service/](../../../helm/charts/access-service/) — Helm chart
- [manifests/smart-building/access-service/](../../../manifests/smart-building/access-service/) — Raw K8s manifests
