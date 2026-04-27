# listing-service

Property listing CRUD + RESO data dictionary

Domain: ``listings`` Â· Language: java Â· Port: 50040

Listings are stored in PostgreSQL with a PostGIS `geometry(POINT,4326)` column for spatial
search. RESO field names map directly to JPA entity fields where possible.

## Run locally

```bash
make run
```

## Endpoints

- ``GET /healthz`` â€” health check, returns ``{ "status": "ok" }``
- ``GET /actuator/prometheus`` â€” metrics

## See also

- [proto/listings/listing-service.proto](../../../proto/listings/listing-service.proto)
- [helm/charts/listing-service/](../../../helm/charts/listing-service/)
- [../README.md](../README.md) â€” domain overview
