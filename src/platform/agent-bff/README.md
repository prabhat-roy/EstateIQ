# agent-bff

Service in the platform domain of EstateIQ.

Language: Go Â· Port: 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/agent-bff/](../../../helm/charts/agent-bff/) â€” Helm chart
- [manifests/platform/agent-bff/](../../../manifests/platform/agent-bff/) â€” Raw K8s manifests
