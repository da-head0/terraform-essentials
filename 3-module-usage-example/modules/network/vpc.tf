resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = merge(
    {
      "Name" = "Main"
    },
    var.default_tags
  )
}

resource "aws_subnet" "public" {
  count = var.subnet_count

  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cidr,local.subnet_new_bits,count.index)

  tags = merge(
    {
      "Name" = "Public1"
    },
    var.default_tags
  )
  availability_zone = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true
}