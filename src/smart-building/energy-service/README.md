# energy-service

Service in the smart-building domain of EstateIQ.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/energy-service/](../../../helm/charts/energy-service/) â€” Helm chart
- [manifests/smart-building/energy-service/](../../../manifests/smart-building/energy-service/) â€” Raw K8s manifests
