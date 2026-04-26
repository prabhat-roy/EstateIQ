# project-service

Service in the **construction** domain of EstateIQ.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/project-service/](../../../helm/charts/project-service/) — Helm chart
- [manifests/construction/project-service/](../../../manifests/construction/project-service/) — Raw K8s manifests
