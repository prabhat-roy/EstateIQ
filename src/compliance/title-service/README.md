# title-service

Service in the **compliance** domain of EstateIQ.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/title-service/](../../../helm/charts/title-service/) — Helm chart
- [manifests/compliance/title-service/](../../../manifests/compliance/title-service/) — Raw K8s manifests
