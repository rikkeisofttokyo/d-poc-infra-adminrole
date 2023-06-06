##################################################################
# AWSアカウントIDを変数定義
##################################################################
data "aws_caller_identity" "current" {}

##################################################################
# VPC
##################################################################
data "aws_vpc" "d-vpc-abc-001" {
    id = "vpc-023907f6fffd9b645"
}


##################################################################
# RouteTable
##################################################################
# dmzとpri1共用のルートテーブル
data "aws_route_table" "d-rtb-pri1-abc-020-a" {
    route_table_id = "rtb-0fe67081d7199554c"
}

data "aws_route_table" "d-rtb-pri1-abc-020-c" {
    route_table_id = "rtb-0d9a6d814a5be9705"
}

# pri2共用のルートテーブル
data "aws_route_table" "d-rtb-pri2-abc-030-a" {
    route_table_id = "rtb-0c32785b2205b597f"
}

data "aws_route_table" "d-rtb-pri2-abc-030-c" {
    route_table_id = "rtb-0ac8f057f4571f8a5"
}

# pub共用のルートテーブル
data "aws_route_table" "d-rtb-pub-abc-010-a" {
    route_table_id = "rtb-0c02619073e75a8d0"
}

data "aws_route_table" "d-rtb-pub-abc-010-c" {
    route_table_id = "rtb-0c1c3c5d37e2c74cf"
}


##################################################################
# EC2のAMI
##################################################################
# 最新Amazon Linux2
data "aws_ami" "amazon_linux_2_latest" {
    most_recent = true
    owners      = ["amazon"] 
    filter {
      name   = "name"
      values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}










