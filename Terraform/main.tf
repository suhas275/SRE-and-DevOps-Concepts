# Provide Block
provider "aws" {
    profile = "default"
    region = "ap-south-1"
}

# Resources Block
resource "aws_instance" "example_server" {
    ami           = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"

    tags = {
        Name = "MyTerraformInstance"
    }
}