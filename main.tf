resource "spacelift_stack" "app" {
  name = "app-prod"
  repository = "testing-one"
  branch = "main"
}

resource "spacelift_context" "prod-k8s-ie" {
  description = "Configuration details for the compute cluster in 🇮🇪"
  name = "Production cluster (Ireland)"
}

resource "spacelift_context_attachment" "prod-k8s-ie" {
  context_id = "prod-k8s-ie"
  stack_id = "spacelift_stack.app.id"
  priority = 0
}
