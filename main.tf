provider "aws" {

    region = var.region
    assume_role {

        role_arn = "arn:aws:iam::039354767281:role/terraform_test_role"
    }
}


resource "aws_instance" "myisntance" {


    ami = "ami-02f147dfb8be58a10"
    instance_type = var.isntanceType
}