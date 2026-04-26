# lead-service

Service in the **crm** domain of EstateIQ.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lead-service/](../../../helm/charts/lead-service/) — Helm chart
- [manifests/crm/lead-service/](../../../manifests/crm/lead-service/) — Raw K8s manifests
