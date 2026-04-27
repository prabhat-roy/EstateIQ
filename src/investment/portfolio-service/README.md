# portfolio-service

Service in the investment domain of EstateIQ.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/portfolio-service/](../../../helm/charts/portfolio-service/) â€” Helm chart
- [manifests/investment/portfolio-service/](../../../manifests/investment/portfolio-service/) â€” Raw K8s manifests
