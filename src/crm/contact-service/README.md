# contact-service

Service in the **crm** domain of EstateIQ.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contact-service/](../../../helm/charts/contact-service/) — Helm chart
- [manifests/crm/contact-service/](../../../manifests/crm/contact-service/) — Raw K8s manifests
