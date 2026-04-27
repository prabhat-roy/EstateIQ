# iot-gateway

Service in the smart-building domain of EstateIQ.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/iot-gateway/](../../../helm/charts/iot-gateway/) â€” Helm chart
- [manifests/smart-building/iot-gateway/](../../../manifests/smart-building/iot-gateway/) â€” Raw K8s manifests
