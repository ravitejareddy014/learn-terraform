variable "ami" {
  default = "ami-08d8a574a3f0aeaf5"
}

variable "security_groups" {
  default = ["sg-087c63f4866acdd8a"]
}

variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z03190791UIPMGMC2MS7M"
}

variable "components" {
  default = {
    frontend  = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb   = { name = "mongodb-dev" }
    user      = { name = "user-dev" }
    redis     = { name = "redis-dev" }
    cart      = { name = "cart-dev" }
    mysql     = { name = "mysql-dev" }
    shipping  = { name = "shipping-dev" }
    payment   = { name = "payment-dev" }
    rabbitmq  = { name = "rabbitmq-dev" }
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name = "${lookup(each.value, "name", null)}.rdevopsb74.online"
  type = "A"
  ttl = 30
  records = [lookup(aws_instance.instance, each.key[""] ]
    }

    output "instances" {
      value = aws_instance.instance
    }