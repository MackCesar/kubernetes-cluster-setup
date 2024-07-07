provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "k8s_master" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "K8S Master"
  }
}

resource "aws_instance" "k8s_node" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "K8S Node ${count.index}"
  }
}
