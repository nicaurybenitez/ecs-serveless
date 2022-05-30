terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.ue1]
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.2.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "nwordpress"
}

provider "aws" {
  alias   = "ue1"
  region  = "us-east-1"
  profile = "nwordpress"
}
