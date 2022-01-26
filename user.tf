resource "aws_transfer_user" "main" {
  count               = length(var.environment)
  server_id           = aws_transfer_server.main.id
  user_name           = join("-", [var.root-domain, var.environment[count.index]])
  role                = aws_iam_role.main.arn
  policy              = aws_iam_role_policy.main2.policy
  home_directory_type = "PATH"
  home_directory      = join("/", [join("", ["/", var.home-path]), var.environment[count.index]])
  tags = {
    Name    = var.root-domain
    Region  = var.region
    Country = var.country
    CECO    = var.ceco
    Owner   = var.owner
  }
}

resource "aws_transfer_ssh_key" "main" {
  count     = length(var.environment)
  server_id = aws_transfer_server.main.id
  user_name = aws_transfer_user.main[count.index].user_name
  body      = var.public_keys[var.environment[count.index]].public_key_info
}