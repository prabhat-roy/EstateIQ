# document-service

Service in the document domain of EstateIQ.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/document-service/](../../../helm/charts/document-service/) â€” Helm chart
- [manifests/document/document-service/](../../../manifests/document/document-service/) â€” Raw K8s manifests
