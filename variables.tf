variable "auth_url" {
  type    = string
}
variable "user_name" {
  type    = string
  default = "devsecops-aiops-sarra"
}
variable "password" {
  type      = string
  sensitive = true
}
variable "tenant_name" {
  type    = string
  default = "devsecops-aiops-sarra"
}
variable "prefix" {
  type    = string
  default = "devsecops-aiops-mean-mern"
}
variable "keypair_name" {
  type    = string
  default = "devsecops-aiops-sarra-keypair"
}
variable "flavor_name" {
  type    = string
  default = "devsecops-aiops-sarra-flavor"
}
variable "image_name" {
  type    = string
  default = "Ubuntu-22.04"
}
variable "routed_subnet_id" {
  type    = string
  default = "df805017-00f3-48a9-bdac-5c6f21093fcf"
}
