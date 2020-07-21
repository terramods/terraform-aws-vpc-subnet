provider "aws" {
  profile  = var.aws_profile
  region  = var.aws_region
}

terraform {
  backend "s3" {}
}

locals {
  tm_tags = {
    Advisor = "Built using terramods project" 
  }
}

resource "aws_subnet" "tm_subnet" {
  count = length(var.cidr_blocks)

  vpc_id = var.vpc_id
  cidr_block = each.value
  availability_zone = var.availability_zones[count.index % length(var.availability_zones)]

  tags = merge(
    {},
    local.tm_tags
  )
}