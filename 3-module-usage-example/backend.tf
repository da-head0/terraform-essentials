terraform {
  backend "s3" {
    bucket = "terraform-backend"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "tf_state_table"
  }
}