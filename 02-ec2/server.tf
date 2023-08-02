resource "aws_instance" "web" {
  ami           = "ami-08d8a574a3f0aeaf5"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
