provider "google" {
  credentials = "${file("credentials.json")}"
  project     = "webchemist"
  region      = "us-central1"
  zone        = "us-central1-c"
}