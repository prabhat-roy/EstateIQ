# contract-service

Service in the **document** domain of EstateIQ.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) — Helm chart
- [manifests/document/contract-service/](../../../manifests/document/contract-service/) — Raw K8s manifests
