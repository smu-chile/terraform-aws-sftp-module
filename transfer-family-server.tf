resource "aws_transfer_server" "main" {
  endpoint_type        = var.endpoint-type
  security_policy_name = var.security-policy-name

  endpoint_details {
    address_allocation_ids = [element(aws_eip.main.*.id, 0),element(aws_eip.main.*.id, 1),element(aws_eip.main.*.id, 2)]
    subnet_ids             = [element(split(",", var.subnet-ids), 0),element(split(",", var.subnet-ids), 1),element(split(",", var.subnet-ids), 2)]
    vpc_id                 = var.vpc-id
    security_group_ids     = [aws_security_group.main.id]
  }

  protocols = [var.protocols]
  tags = {
    Name    = var.root-domain
    Region  = var.region
    Country = var.country
    CECO    = var.ceco
    Owner   = var.owner
  }
}

resource "aws_eip" "main" {
  count = length(var.environment)
  vpc = true
  tags = {
    Name    = var.root-domain
    Region  = var.region
    Country = var.country
    CECO    = var.ceco
    Owner   = var.owner
  }
}

resource "aws_security_group" "main" {
  name        = "Allow SFTP"
  description = "Allow SFTP inbound traffic"
  vpc_id      = var.vpc-id

  ingress {
      description      = "TLS from VPC"
      from_port        = 0
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [var.cidr-blocks] #["34.73.66.189/32","35.227.19.200/32","34.138.190.218/32","186.148.38.115/32"]
    }

  tags = {
    Name    = var.root-domain
    Region  = var.region
    Country = var.country
    CECO    = var.ceco
    Owner   = var.owner
  }
}
