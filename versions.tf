terraform {
  required_version = ">= 0.13"

  required_providers {
    aws    = ">= 3.0"
    random = ">= 2.1"
    lacework = {
      source  = "lacework/lacework"
      version = "~> 2.0"
    }
  }
}
