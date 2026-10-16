terraform {
  backend "gcs" {
    bucket = "gcp-devsecops-tfstate-khatrig"
    prefix = "dev"
  }
}
