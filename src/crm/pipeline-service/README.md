# pipeline-service

Service in the crm domain of EstateIQ.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pipeline-service/](../../../helm/charts/pipeline-service/) â€” Helm chart
- [manifests/crm/pipeline-service/](../../../manifests/crm/pipeline-service/) â€” Raw K8s manifests
