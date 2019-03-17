provider "aws" {
  region = "ap-south-1"
}


module "webserver_cluster" {
  source = "git@github.com:nehanikam/tf-modules.git//services/ec2/?ref=v0.3.0"

  cluster_name           = "webservers-stage"
  image_id               = "${var.ami_id}"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = "${module.webserver_cluster.elb_security_group_id}"

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
