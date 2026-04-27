# avm-service

Automated Valuation Model rule engine. Combines XGBoost predictions with comparable selection
to produce a price + confidence interval.

Domain: ``valuation`` Â· Language: kotlin Â· Port: 50141

## CLAUDE.md rule #5 â€” non-negotiable

Every AVM response includes:
- a confidence interval (`AvmConfidence` proto message â€” lower/upper bound + confidence 0..1)
- the comparables that were used (list of property ids)

Valuations with `confidence < 0.7` are flagged via `flagged_for_human_review = true` and
routed to the manual review queue in `valuation/valuation-report` rather than served
directly to customers.

## Endpoints

- ``GET /healthz``
- ``POST /v1/avm/predict`` â€” { property_ref } â†’ { predicted_price, confidence, comparables[] }
