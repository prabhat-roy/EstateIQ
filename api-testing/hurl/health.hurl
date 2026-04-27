# Health check for all critical services
GET https://estateiq.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.estateiq.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
