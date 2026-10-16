terraform {
  backend "gcs" {
    bucket = "gcp-devsecops-tfstate-khatri"
    prefix = "dev"
  }
}
