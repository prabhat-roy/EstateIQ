# lead-scoring

Service in the **analytics** domain of EstateIQ.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lead-scoring/](../../../helm/charts/lead-scoring/) — Helm chart
- [manifests/analytics/lead-scoring/](../../../manifests/analytics/lead-scoring/) — Raw K8s manifests
