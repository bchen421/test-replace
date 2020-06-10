locals {
  default_security_groups      = "${data.terraform_remote_state.remote_env_state.outputs.sr-internal-traffic-security-group-id}"
  default_db_subnet_group      = "${data.terraform_remote_state.remote_env_state.outputs.infra-db-subnet-group-name}"
}

