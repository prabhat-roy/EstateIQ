# renewal-service

Service in the **leasing** domain of EstateIQ.

**Language:** Go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/renewal-service/](../../../helm/charts/renewal-service/) — Helm chart
- [manifests/leasing/renewal-service/](../../../manifests/leasing/renewal-service/) — Raw K8s manifests
