resource "spacelift_stack" "app" {
  name = "app-prod"
  repository = "testing-one"
  branch = "main"
}

resource "spacelift_context" "prod-k8s-ie" {
  description = "Configuration details for the compute cluster in 🇮🇪"
  name = "Production cluster (Ireland)"
}
