resource "aws_instance" "frontend" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "frontend-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongodb" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "mongodb-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalogue" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "catalogue-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "redis-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "cart-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "user-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "mysql-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "shipping-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "rabbitmq-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "payment-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z03190791UIPMGMC2MS7M"
  name    = "dispatch-dev.rdevops74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
