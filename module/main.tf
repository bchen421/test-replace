resource "aws_db_instance" "postgres" {
  identifier = "${var.sr_app}-${var.sr_env}"

  name     = var.name
  username = var.username
  password = var.password

  allocated_storage         = var.allocated_storage
  max_allocated_storage     = var.max_allocated_storage
  storage_type              = var.storage_type
  engine                    = "postgres"
  engine_version            = var.engine_version
  instance_class            = var.instance_class
  db_subnet_group_name      = var.db_subnet_group_name
  multi_az                  = var.multi_az
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = "${var.sr_app}-${var.sr_env}-final"
  port                      = var.port

  maintenance_window  = var.maintenance_window
  publicly_accessible = var.publicly_accessible

  replicate_source_db  = var.replicate_source_db
  parameter_group_name = var.parameter_group_name
  option_group_name    = var.option_group_name
  monitoring_role_arn  = var.monitoring_role_arn

  vpc_security_group_ids = split(",", var.security_groups)
  iops                   = var.iops
  monitoring_interval    = var.monitoring_interval
  ca_cert_identifier     = var.ca_cert_identifier

  allow_major_version_upgrade = var.allow_major_version_upgrade
  apply_immediately           = var.apply_immediately
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  backup_retention_period     = var.backup_retention_period
  backup_window               = var.backup_window
  copy_tags_to_snapshot       = var.copy_tags_to_snapshot
  deletion_protection         = var.deletion_protection

  snapshot_identifier = var.snapshot_identifier

  iam_database_authentication_enabled = var.enable_iam_authentication

  tags = {
    sr_app    = var.sr_app
    sr_group  = var.sr_group
    sr_env    = var.sr_env
    sr_region = var.sr_region
    sr_org    = var.sr_org
  }

  lifecycle {
    create_before_destroy = false
  }
}

