# Events â€” EstateIQ

Avro schemas for cross-domain events published to Kafka. One file per event,
named `<domain>.<entity>.<verb>.avsc`. Schema-registry-managed; never break
forward compatibility â€” evolve fields with defaults only.

## Conventions

- Topic naming: `<domain>.<entity>.<event>` â€” e.g. `listings.listing.published`
- Namespace: `com.estateiq.<domain>.events`
- Every event includes:
  - `event_id` (UUID)
  - `event_time` (millis since epoch)
  - `actor_id` (agent / tenant / investor / system, where applicable)
  - `correlation_id` (propagated across all related events for tracing)
- Property references use the shared `PropertyRef` record (with optional MLS id and title id)
- PII (raw email, phone, national_id) is always tokenised â€” never on the wire
- AVM events MUST include the confidence interval AND the comparables used
  (CLAUDE.md rule #5). Low-confidence valuations carry `flagged_for_human_review = true`

## Real-estate-specific events

| Event | Triggers |
|---|---|
| `listings.listing.published` | MLS syndication to Zillow/Rightmove/Idealista within 15 minutes |
| `transactions.deal.closed` | Commission calc, trust-account release, land-registry update |
| `leasing.lease.signed` | Tenancy deposit protection registration (TDS / REIA / Ejari) |
| `valuation.avm.computed` | Cache update, agent dashboard refresh, low-confidence review queue |
| `compliance.kyc.approved` | Unblocks deal progression to escrow |
| `finance.payment.captured` | Trust-account ledger entry (append-only) |
