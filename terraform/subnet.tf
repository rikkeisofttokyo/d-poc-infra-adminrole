##################################################################
# Subnet
##################################################################
# Subnet pri1
resource "aws_subnet" "d-sn-pri1-abc-020-a" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.2.0/23" 
    availability_zone = "ap-northeast-1a"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pri-${lower(var.tags["sys"])}-sre-a"
      "SystemID" = var.tags["sys"]
    }
}

resource "aws_subnet" "d-sn-pri1-abc-020-c" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.4.0/23" 
    availability_zone = "ap-northeast-1c"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pri-${lower(var.tags["sys"])}-sre-c"
      "SystemID" = var.tags["sys"]
    }
}

# Subnet pri2
resource "aws_subnet" "d-sn-pri2-abc-030-a" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.6.0/25" 
    availability_zone = "ap-northeast-1a"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pri-${lower(var.tags["sys"])}-sre-a"
      "SystemID" = var.tags["sys"]
    }
}

resource "aws_subnet" "d-sn-pri2-abc-030-c" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.6.128/25" 
    availability_zone = "ap-northeast-1c"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pri-${lower(var.tags["sys"])}-sre-c"
      "SystemID" = var.tags["sys"]
    }
}

# Subnet pub
resource "aws_subnet" "d-sn-pub-abc-010-a" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.1.0/25" 
    availability_zone = "ap-northeast-1a"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pub-${lower(var.tags["sys"])}-sre-a"
      "SystemID" = var.tags["sys"]
    }
}

resource "aws_subnet" "d-sn-pub-abc-010-c" {
    vpc_id            = data.aws_vpc.d-vpc-abc-001.id
    cidr_block        = "10.0.1.128/25" 
    availability_zone = "ap-northeast-1c"
    tags = {
      "Name"     = "${var.tags["env"]}-sn-pub-${lower(var.tags["sys"])}-sre-c"
      "SystemID" = var.tags["sys"]
    }
}
