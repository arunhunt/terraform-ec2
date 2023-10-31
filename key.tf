resource "tls_private_key" "devown" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "devown" {
  key_name   = "devown"       # Create "myKey" to AWS!!
  public_key = tls_private_key.devown.public_key_openssh

  provisioner "local-exec" { # Create "devown.pem" to your computer!!
    command = "echo '${tls_private_key.devown.private_key_pem}' > ./devown.pem"
  }
}
