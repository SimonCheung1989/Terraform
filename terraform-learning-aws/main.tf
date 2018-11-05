#This is line comments
//This is line comments
/*
  This is block comments
*/
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}

# provider "aws" {
#   access_key = "${var.access_key}"
#   secret_key = "${var.secret_key}"
#   region     = "${var.region}"
# }

/*
variable "config" {
  name = "Simon"

  address = <<EOF
    China
    GuangDong
    GuangZhou
  EOF

  isAlive  = true
  age      = 28
  schooles = ["XJ", "GD", "HN"]
}
*/

resource "aws_s3_bucket" "20181001_aws_s3" {
  bucket = "digital-peak-20181001-001"
  acl    = "private"

  tags {
    Name        = "${var.region}"
    Environment = "Dev"
  }
}

# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "digital-peak-20181001-002"
#   acl    = "public"

#   tags {
#     Name        = "Created by Terraform"
#     Environment = "Dev"
#   }
# }

resource "aws_instance" "20181001_ec2_001" {
  ami           = "ami-0ab7944c6328200be"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.20181001_ec2_001.public_ip} > ip_address.txt"
  }

  provisioner "local-exec" {
    command = "echo first"
    when    = "destroy"
  }

  provisioner "local-exec" {
    command = "echo second"
  }
}

resource "aws_eip" "20181001_eip_001" {
  instance = "${aws_instance.20181001_ec2_001.id}"
}
