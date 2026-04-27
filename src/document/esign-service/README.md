# esign-service

E-signature orchestration. Compatible with DocuSign and OpenSign providers â€” abstracted via
the `ESIGN_PROVIDER` env var.

Domain: ``document`` Â· Language: node Â· Port: 50301

## Endpoints

- ``GET /healthz``
- ``POST /v1/esign/webhook`` â€” provider callback; emits `document.contract.signed` Kafka event
