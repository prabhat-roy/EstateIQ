# search-service

Geospatial property search. Combines Elasticsearch (full-text + facets) with PostGIS
(radius / polygon / catchment-area filtering). The critical path of the platform —
SLO is P95 < 500ms.

**Domain:** ``listings`` · **Language:** go · **Port:** 50041
