#resource "spacelift_stack" "app" {
  name       = "app-prod"
  repository = "testing-one"
  branch     = "feature/test-branch"
  labels     = ["production"]
}

#resource "spacelift_context" "prod-k8s-ie" {
  description = "Configuration details for the compute cluster in 🇮🇪"
  name        = "Production cluster (Ireland2)"
}

#resource "spacelift_context_attachment" "attachment" {
  context_id = spacelift_context.prod-k8s-ie.id
  stack_id   = spacelift_stack.app.id
  priority   = 0
}

resource "random_pet" "test" {}
