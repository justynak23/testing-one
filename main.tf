resource "spacelift_stack" "app" {
  name = "app-prod"
  repository = "testing-one"
  branch = "main"
}
