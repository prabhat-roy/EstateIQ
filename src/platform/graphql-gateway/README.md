# graphql-gateway

Service in the platform domain of EstateIQ.

Language: Go Â· Port: 50005

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/graphql-gateway/](../../../helm/charts/graphql-gateway/) â€” Helm chart
- [manifests/platform/graphql-gateway/](../../../manifests/platform/graphql-gateway/) â€” Raw K8s manifests
