module "moduledb" {
  source = "./module"

  sr_app    = "${var.group}-postgres"
  sr_group  = "${var.group}"
  sr_env    = "${var.env}"
  sr_region = "${var.region}"
  sr_org    = "${var.org}"

  name     = "postgres"
  username = "postgres"
  password = "passwordgoeshere"

  instance_class       = "db.m5.large"
  multi_az             = "false"
  publicly_accessible  = "false"
  db_subnet_group_name = "${local.default_db_subnet_group}"
  security_groups      = "${local.default_security_groups},${data.terraform_remote_state.remote_env_state.outputs.sr-ecs-traffic-security-group-id}"
  engine_version       = "11.4"

  storage_type            = "gp2"
  allocated_storage       = 50
  backup_retention_period = 7
  skip_final_snapshot     = "true"
  maintenance_window      = "Sun:08:00-Sun:10:00"
  backup_window           = "07:00-07:30"
  ca_cert_identifier      = "rds-ca-2019"

  replicate_source_db  = ""
  parameter_group_name = ""
  option_group_name    = ""
  monitoring_role_arn  = ""

  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true
  apply_immediately           = true

  deletion_protection = "false"
  snapshot_identifier = "${var.postgres-snapshot}"
}

variable "postgres-snapshot" {}
