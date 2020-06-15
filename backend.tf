terraform {
  backend "gcs" {
    credentials = "account.json"
    bucket  = "terraform-prod-state-seydhavensdotcom"
    prefix  = "terraform/state"
  }
}

# data "terraform_remote_state" "current_state" {
#   backend = "gcs"
#   config = {
#     bucket  = "terraform-prod-state-seydhavensdotcom"
#     prefix  = "prod"
#   }
# }

# resource "template_file" "current_template" {
#   template = "${greeting}"

#   vars {
#     greeting = "${data.terraform_remote_state.foo.greeting}"
#   }
# }