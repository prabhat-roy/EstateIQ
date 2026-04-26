# EstateIQ — Tilt config for local development on kind/minikube.
# `tilt up` builds and deploys a curated dev subset; full stack via skaffold.

allow_k8s_contexts(['kind-estateiq', 'docker-desktop', 'minikube'])

DEV_SERVICES = [
    ('platform',  'api-gateway',     50000),
    ('platform',  'portal-bff',      50003),
    ('platform',  'agent-bff',       50001),
    ('listings',  'listing-service', 50040),
    ('listings',  'search-service',  50041),
    ('valuation', 'avm-service',     50141),
]

for domain, name, port in DEV_SERVICES:
    docker_build('estateiq/' + name, 'src/{}/{}'.format(domain, name))
    helm_resource(
        name,
        'helm/charts/' + name,
        deps=['src/{}/{}'.format(domain, name)],
        port_forwards=str(port),
    )

local_resource(
    'compose-infra',
    cmd='docker compose up -d postgres redis kafka elasticsearch',
    auto_init=True,
    allow_parallel=True,
)
