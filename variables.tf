variable "environment" {
  type    = list
  default = ["dev", "qa", "prod"]
}

variable "root-domain" {
  type    = string
  default = ""
}

variable "subnet-ids" {
  type    = string
  default = ""
}

variable "cidr-blocks" {
  type    = string
  default = ""
}


variable "endpoint-type" {
  type    = string
  default = ""
}

variable "security-policy-name" {
  type    = string
  default = ""
}


variable "vpc-id" {
  type    = string
  default = ""
}

variable "protocols" {
  type    = string
  default = ""
}


variable "aws_region" {
  type    = string
  default = "us-east-1"
}


variable "region" {
  type    = string
  default = ""
}

variable "country" {
  type    = string
  default = ""
}

variable "ceco" {
  type    = string
  default = ""
}

variable "owner" {
  type    = string
  default = ""
}

variable "home-path" {
  type    = string
  default = ""
}

