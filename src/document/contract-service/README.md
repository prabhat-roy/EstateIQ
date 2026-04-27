# contract-service

Service in the document domain of EstateIQ.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-service/](../../../helm/charts/contract-service/) â€” Helm chart
- [manifests/document/contract-service/](../../../manifests/document/contract-service/) â€” Raw K8s manifests
