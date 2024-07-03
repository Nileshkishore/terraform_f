variable "ports" {
  type = list(number)
}

variable "images_id" {
  type = string
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "type" {
  type = string
}

variable "region" {
  type = string
}
