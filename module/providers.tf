provider "aws" {
  profile                 = "${var.aws_profile}"
  region                  = "${var.region}"
  shared_credentials_file = "${pathexpand(var.shared_credentials_file)}"
  version                 = "2.42.0"

  assume_role {
    role_arn = "${var.role_arn}"
  }
}

provider "aws" {
  alias                   = "dns"
  profile                 = "${var.aws_profile}"
  region                  = "${var.region}"
  shared_credentials_file = "${pathexpand(var.shared_credentials_file)}"
  version                 = "2.42.0"

  assume_role {
    role_arn = "arn:aws:iam::<REDACTED>:role/aws-sr-am-dns-admin"
  }
}

provider "vault" {
  version = "2.6.0"
  address = "REDACTED"
}

provider "newrelic" {
  version = "1.5"
  api_key = "${data.vault_generic_secret.newrelic.data["api_key"]}"
}

