terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = local.name
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = local.name
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

# resource "null_resource" "ansible" {
#   depends_on = [aws_route53_record.record]
#   provisioner "remote-exec" {
#     connection {
#       type = "ssh"
#       user = "ec2-user"
#       password = "DevOps321"
#       host     = aws_instance.instance.private_ip
#     }
#     inline = [
#       "sudo pip3.12 install ansible",
#       "ansible-pull -i localhost, -U https://github.com/veeranki-awsdevsecops/roboshop-ansible roboshop.yml -e role_name=${var.name}"
#     ]
#   }
# }