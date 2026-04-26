# price-prediction

LSTM-based 12-month price forecasting service.

**Domain:** ``analytics`` · **Language:** python · **Port:** 50281

## Endpoints

- ``GET /healthz``
- ``POST /v1/predict`` — { property_ref, horizon_months } → { forecast[], confidence_band[] }

## Model

Loaded from MLflow registry at boot — `price-prediction-v1`. Inputs include
historical sale + rental transactions, macro indicators, and PostGIS-derived
location features (school catchment, transport isochrone).
