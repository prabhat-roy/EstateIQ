# agent-sso

Service in the **identity** domain of EstateIQ.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/agent-sso/](../../../helm/charts/agent-sso/) — Helm chart
- [manifests/identity/agent-sso/](../../../manifests/identity/agent-sso/) — Raw K8s manifests
