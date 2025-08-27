resource "spacelift_stack" "app" {
  name = "app-prod"
  repository = "app-infra"
  branch = "main"
}
