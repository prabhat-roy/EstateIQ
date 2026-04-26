# pipeline-service

Service in the **crm** domain of EstateIQ.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pipeline-service/](../../../helm/charts/pipeline-service/) — Helm chart
- [manifests/crm/pipeline-service/](../../../manifests/crm/pipeline-service/) — Raw K8s manifests
