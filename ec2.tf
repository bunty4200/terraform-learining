module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0d593311db5abb72b"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = "subnet-08f74829cce5d18a5"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
