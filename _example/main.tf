provider "google" {
  project = "testing-gcp-sys"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


module "vpc" {
  source                                    = "./../"
  name                                      = "app"
  environment                               = "test"
  routing_mode                              = "REGIONAL"
  mtu                                       = 1500
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}
