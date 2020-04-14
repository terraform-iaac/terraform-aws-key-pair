output "public_key" {
  value = tls_private_key.tls.public_key_pem
}

output "private_key" {
  value = tls_private_key.tls.private_key_pem
}

output "key_name" {
  value = var.key_name
}
