controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/estateiq" }
}
worker {
  name = "worker-estateiq-1"
  controllers = ["controller-1.boundary.estateiq.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/estateiq-boundary"
}
