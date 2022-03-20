
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIASSK7FJQVNAPNTVWF"
  secret_key = "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"
}


resource "aws_instance" "ec2_terraform" {
  ami           = var.my_ami
  instance_type = var.my_var

  tags = {
    Name = "dev"
  }
}

variable "my_var" {
   default = "t2.micro"

}

