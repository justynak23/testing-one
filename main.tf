provider "spacelift" {}

variable "idp_group_mapping_id" {}
variable "role_id" {}
variable "target_space_id" {
  default = "QA-SPACE-ID" 
}

resource "spacelift_role_attachment" "repro" {
  idp_group_mapping_id = var.idp_group_mapping_id
  role_id              = var.role_id
  space_id             = var.target_space_id
}
