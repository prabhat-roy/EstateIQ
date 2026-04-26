# iot-gateway

Service in the **smart-building** domain of EstateIQ.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/iot-gateway/](../../../helm/charts/iot-gateway/) — Helm chart
- [manifests/smart-building/iot-gateway/](../../../manifests/smart-building/iot-gateway/) — Raw K8s manifests
