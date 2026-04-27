# renewal-service

Service in the leasing domain of EstateIQ.

Language: Go Â· Port: 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/renewal-service/](../../../helm/charts/renewal-service/) â€” Helm chart
- [manifests/leasing/renewal-service/](../../../manifests/leasing/renewal-service/) â€” Raw K8s manifests
