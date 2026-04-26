# graphql-gateway

Service in the **platform** domain of EstateIQ.

**Language:** Go · **Port:** 50005

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/graphql-gateway/](../../../helm/charts/graphql-gateway/) — Helm chart
- [manifests/platform/graphql-gateway/](../../../manifests/platform/graphql-gateway/) — Raw K8s manifests
