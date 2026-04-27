# campaign-service

Service in the marketing domain of EstateIQ.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/campaign-service/](../../../helm/charts/campaign-service/) â€” Helm chart
- [manifests/marketing/campaign-service/](../../../manifests/marketing/campaign-service/) â€” Raw K8s manifests
