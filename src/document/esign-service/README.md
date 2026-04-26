# esign-service

E-signature orchestration. Compatible with DocuSign and OpenSign providers — abstracted via
the `ESIGN_PROVIDER` env var.

**Domain:** ``document`` · **Language:** node · **Port:** 50301

## Endpoints

- ``GET /healthz``
- ``POST /v1/esign/webhook`` — provider callback; emits `document.contract.signed` Kafka event
