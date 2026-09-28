
data "aws_security_group" "allow_all" {
  name = "allow_all"
}

data "vault_generic_secret" "ssh-creds" {
  path = "roboshop-infra/ssh"
}