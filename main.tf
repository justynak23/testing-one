resource "spacelift_stack" "app" {
# Required:
name = "app-prod"
repository = "app-infra"
branch = "main"
