resource "null_resource" "ansible" {
  provisioner "remote-exec" {
	connection {
	  type = "ssh"
	  user = "ec2-user"
	  password = "DevOps321"
	  host = var.private_ip
	}
	inline = [
	  "sudo dnf install python3.13-pip -y",
	  "sudo pip3.11 install ansible",
	  "ansible-pull -i localhost, -U https://github.com/ckolli66/roboshop-ansible-roles-v1.git main.yaml -e component=${var.component_name}"
	]
  }
}