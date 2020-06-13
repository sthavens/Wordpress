provider "google"{
    credentials = file("account.json")
    project = "dev-antler-210722"
    region = "us-west1"
}