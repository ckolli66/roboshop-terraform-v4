variable "ami" {
  default = "ami-09c813fb71547fc4f"
}
variable "sg_id" {}
variable "type" {
  default = "t3.small"
}
variable "record_type" {
  default = "A"
}
variable "zone_id" {
  default = "Z06404431NXHJ1IDZF7W2"
}

variable "components" {
  default = {
	frontend  = " "
	mongodb   = " "
	catalogue = " "
	redis     = " "
	user      = " "
	cart      = " "
	shipping  = " "
	payment   = " "
	mysql     = " "
	rabbitmq  = " "
  }
}