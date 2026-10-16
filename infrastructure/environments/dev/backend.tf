terraform {
  backend "gcs" {
    bucket = "gcp-devsecops-tfstate"
    prefix = "dev"
  }
}
