# agent-bff

Service in the **platform** domain of EstateIQ.

**Language:** Go · **Port:** 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/agent-bff/](../../../helm/charts/agent-bff/) — Helm chart
- [manifests/platform/agent-bff/](../../../manifests/platform/agent-bff/) — Raw K8s manifests
