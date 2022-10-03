
terraform {
  backend "s3" {
          bucket = "terra-backend-s3bucket"
          key = "terraform-s3/terraform.tfstate"  #path & file which hold the state
          region = "ap-south-1" 
          #depends_on = [aws_s3_bucket.terra-backend-s3bucket]
  }
}