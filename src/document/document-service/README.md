# document-service

Service in the **document** domain of EstateIQ.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/document-service/](../../../helm/charts/document-service/) — Helm chart
- [manifests/document/document-service/](../../../manifests/document/document-service/) — Raw K8s manifests
