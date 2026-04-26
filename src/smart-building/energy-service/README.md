# energy-service

Service in the **smart-building** domain of EstateIQ.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/energy-service/](../../../helm/charts/energy-service/) — Helm chart
- [manifests/smart-building/energy-service/](../../../manifests/smart-building/energy-service/) — Raw K8s manifests
