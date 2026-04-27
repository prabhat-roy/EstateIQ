# land-registry

Service in the compliance domain of EstateIQ.

Language: Go Â· Port: 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/land-registry/](../../../helm/charts/land-registry/) â€” Helm chart
- [manifests/compliance/land-registry/](../../../manifests/compliance/land-registry/) â€” Raw K8s manifests
