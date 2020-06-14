provider "google"{
    credentials = file("account.json")
    project = "dev-antler-210722"
    region = var.GCP_REGION
    zone = var.GCP_ZONE
}
