
variable "ami" {
default = "ami-045269a1f5c90a6a0"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "az" {
    default = "us-east-1a"
}
variable "key" {
    default = "aws_key_pair.max_keypair.key_name"
}
variable "subnet_id" {
    default = "aws_subnet.public1.id"
}
variable "sg-id" {
    default = "aws_security_group.mysg.id"
  
}
// Variables for EBS 
variable "ebs_size" {
    default =  "20"
}
variable "ebs_Name" {
  default = "Extra-vol"
}
// Variables for Key Pair
variable "key_algo" {
  default = "RSA"
}
variable "key_bits" {
  default = "4096"
}
variable "key_name"{
  default = "max-key"
}
variable "public_key" {
  default = "tls_private_key.max_Key.public_key_openssh"
}
variable "content" {
    default = "tls_private_key.max_Key.private_key_pem"
}
variable "file_permission" {
  default = "0400"
}