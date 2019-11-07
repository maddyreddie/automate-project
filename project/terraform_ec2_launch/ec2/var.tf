variable "aws_region" {
  type    = "string"
  default = "us-east-1"
}
variable "aws_access_key" {
  type    = "string"
  default = ""
}
variable "aws_secret_key" {
  type    = "string"
  default = ""
}
variable "ami_id" {
  type    = "string"
  default = "ami-01af538473fc34608"
}
variable "instance_type" {
  type    = "string"
  default = "t2.medium"
}
variable "key_name" {
  type    = "string"
  default = ""
}
variable "sg_name" {
  type    = "string"
  default = ""
}
