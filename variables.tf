variable "key_name" {
  type = string
}
variable "key_storage_bucket" {
  type = string
}
variable "rsa_bits" {
  type    = number
  default = 4096
}