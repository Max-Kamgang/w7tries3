// EC2 instance Code
resource "aws_instance" "server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.az
  subnet_id              = var.subnet_id
  //vpc_security_group_ids = [var.sg-id]
 // key_name               = aws_key_pair.max_keypair.key_name
  user_data              = file("setup.sh")
  tags = {
    Name       = "terraform-ec2-instance"
    env        = "dev"
    created_by = "Max K"
  }
}

// Ebs Volume Attachment to the instance
resource "aws_ebs_volume" "ebsvol1" {
  availability_zone = var.az
  size              = var.ebs_size
  tags = {
    Name = var.ebs_Name
  }
  }
resource "aws_volume_attachment" "volattach1" {
  instance_id = aws_instance.server.id
  volume_id   = aws_ebs_volume.ebsvol1.id
  device_name = "/dev/sdb"


}