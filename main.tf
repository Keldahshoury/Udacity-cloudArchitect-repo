resource "aws_instance" "instance"{
  ami = "ami-03e0b06f01d45a4eb"
  instance_type = "t2.micro"
  tags = {
  name = "Udacity T2"
  }
}

resource "aws_instance" "Large_instance"{
  ami = "ami-03e0b06f01d45a4eb"
  instance_type = "m4.large"
  tags = {
  name = "Udacity M4"
  }
}
