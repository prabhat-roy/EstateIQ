# milestone-service

Service in the **construction** domain of EstateIQ.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/milestone-service/](../../../helm/charts/milestone-service/) — Helm chart
- [manifests/construction/milestone-service/](../../../manifests/construction/milestone-service/) — Raw K8s manifests
