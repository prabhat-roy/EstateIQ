# Proto — EstateIQ

Single source of truth for service contracts. Every gRPC service used in the
platform has its `.proto` definition here, organised by business domain.

## Layout

```
proto/
├── buf.yaml          ← Buf module config
├── buf.gen.yaml      ← Codegen targets (Go, Java, Python, Kotlin)
├── common/           ← Shared types (Address, Money, GeoPoint, PropertyRef,
│                       AvmConfidence, AmlScreeningRef, Pagination)
└── <domain>/
    └── <service>.proto
```

## Codegen

```bash
make proto    # runs `buf generate` from repo root
```

Generated bindings land in `proto/gen/{go,java,python,kotlin}/...`. Each
service imports the bindings from there.

## Conventions

- One `.proto` file per service, containing one `service` and its messages
- Package: `estateiq.<domain>.v1`
- Versioning: `v1`, `v2` — break only via new package
- AVM responses always include `AvmConfidence` (CLAUDE.md rule #5)
- Common types live in `common/` and are imported via `estateiq.common.v1`
