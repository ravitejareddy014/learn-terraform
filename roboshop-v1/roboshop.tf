resource "aws_instance" "frontend" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "cart" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "user" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "user"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "dispatch" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-087c63f4866acdd8a" ]

  tags = {
    Name = "dispatch"
  }
}