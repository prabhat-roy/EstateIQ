# lead-service

Service in the crm domain of EstateIQ.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lead-service/](../../../helm/charts/lead-service/) â€” Helm chart
- [manifests/crm/lead-service/](../../../manifests/crm/lead-service/) â€” Raw K8s manifests
