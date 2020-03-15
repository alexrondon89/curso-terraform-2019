module "webserver" {
	source = "/Users/cristhianalexanderrondon/Desktop/terraform/practica-arranz/practica-modulo-con-github"
	  project_name = "pratica modulo"
  vpc_id = data.aws_vpc.selected.id
  environment = "testing"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}