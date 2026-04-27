# kyc-service

Service in the identity domain of EstateIQ.

Language: Go Â· Port: 50025

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kyc-service/](../../../helm/charts/kyc-service/) â€” Helm chart
- [manifests/identity/kyc-service/](../../../manifests/identity/kyc-service/) â€” Raw K8s manifests
