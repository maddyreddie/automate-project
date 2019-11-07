provider "aws" {
  region     = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "inmail-api-web-dev" {
  ami                  = "${var.ami_id}"
  instance_type        = "${var.web_instance_type}"
  key_name             = "${var.key_name}"
  security_groups      = "${var.sg_name}"

  tags {
    Name  = "name"
    Owner = "owner_name"
  }
}
