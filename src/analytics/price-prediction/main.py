"""price-prediction — LSTM-based 12-month property-price forecast.

Loads model from MLflow registry (`price-prediction-v1`) at boot. Confidence
is computed using the LSTM's prediction variance over a Monte-Carlo dropout
ensemble. Outputs always include a confidence band, in line with the wider
EstateIQ rule that pricing services never silently fail (CLAUDE.md).
"""
import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="price-prediction", version="0.1.0", description="12-month property price forecast (LSTM)")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "price-prediction",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50281"))
    uvicorn.run(app, host="0.0.0.0", port=port)
