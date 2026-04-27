# search-service

Geospatial property search. Combines Elasticsearch (full-text + facets) with PostGIS
(radius / polygon / catchment-area filtering). The critical path of the platform â€”
SLO is P95 < 500ms.

Domain: ``listings`` Â· Language: go Â· Port: 50041
