# title-service

Service in the compliance domain of EstateIQ.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/title-service/](../../../helm/charts/title-service/) â€” Helm chart
- [manifests/compliance/title-service/](../../../manifests/compliance/title-service/) â€” Raw K8s manifests
