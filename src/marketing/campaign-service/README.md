# campaign-service

Service in the **marketing** domain of EstateIQ.

**Language:** Go · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/campaign-service/](../../../helm/charts/campaign-service/) — Helm chart
- [manifests/marketing/campaign-service/](../../../manifests/marketing/campaign-service/) — Raw K8s manifests
