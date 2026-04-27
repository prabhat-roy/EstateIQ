# mls-syndicator

Service in the listings domain of EstateIQ.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mls-syndicator/](../../../helm/charts/mls-syndicator/) â€” Helm chart
- [manifests/listings/mls-syndicator/](../../../manifests/listings/mls-syndicator/) â€” Raw K8s manifests
