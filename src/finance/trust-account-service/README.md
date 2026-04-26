# trust-account-service

Trust account ledger for tenant deposits and client funds. **Append-only** (CLAUDE.md rule #6).

**Domain:** ``finance`` · **Language:** java · **Port:** 50224

## Compliance

- UK: RICS Client Money Protection
- AU: REIA trust accounting
- UAE: regulator-segregated client funds
- Deploy strategy: **blue-green only** (no canary). Touching trust ledger reads must
  always see the same DB version as writes.

## Endpoints

- ``GET /healthz``
- ``POST /v1/trust/entries`` — append a ledger entry
- ``GET /v1/trust/entries`` — query entries (read-only)
