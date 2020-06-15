provider "google"{
    credentials = file("account.json")
    project = "sharp-science-280307"
    region = var.GCP_REGION
    zone = var.GCP_ZONE
}
