# price-prediction

LSTM-based 12-month price forecasting service.

Domain: ``analytics`` Â· Language: python Â· Port: 50281

## Endpoints

- ``GET /healthz``
- ``POST /v1/predict`` â€” { property_ref, horizon_months } â†’ { forecast[], confidence_band[] }

## Model

Loaded from MLflow registry at boot â€” `price-prediction-v1`. Inputs include
historical sale + rental transactions, macro indicators, and PostGIS-derived
location features (school catchment, transport isochrone).
