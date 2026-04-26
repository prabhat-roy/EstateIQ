# kyc-service

Service in the **identity** domain of EstateIQ.

**Language:** Go · **Port:** 50025

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kyc-service/](../../../helm/charts/kyc-service/) — Helm chart
- [manifests/identity/kyc-service/](../../../manifests/identity/kyc-service/) — Raw K8s manifests
