module "webserver" {
	source = "git::github.com/alexrondon89/terraform-module-ec2-with-eip.git?ref=v1.0.1"
	  project_name = "pratica modulo"
  vpc_id = data.aws_vpc.selected.id
  environment = "testing"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}