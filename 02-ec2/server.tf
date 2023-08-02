resource "aws_instance" "web" {
  ami           = "ami-039249fb0c98979e0"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
