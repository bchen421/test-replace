resource "aws_db_instance" "resourcedb" {
  identifier = "resourcedb"

  name     = "postgres"
  username = "postgres"
  password = "passwordgoeshere1234"

  allocated_storage         = 50
  storage_type              = "gp2"
  engine                    = "postgres"
  engine_version            = "11.4"
  instance_class            = "db.m5.large"
  db_subnet_group_name      = local.default_db_subnet_group
  multi_az                  = false
  skip_final_snapshot       = true
  port                      = 5432

  maintenance_window  = "Sun:08:00-Sun:10:00"
  publicly_accessible = false


  vpc_security_group_ids = split(",", "${local.default_security_groups},${data.terraform_remote_state.remote_env_state.outputs.sr-ecs-traffic-security-group-id}")

  allow_major_version_upgrade = false
  apply_immediately           = true
  auto_minor_version_upgrade  = true
  backup_retention_period     = 1
  backup_window               = "07:00-07:30"
  copy_tags_to_snapshot       = true
  deletion_protection         = false

  #snapshot_identifier = var.postgres-snapshot
  snapshot_identifier = "arn:aws:rds:us-east-1:939611729628:snapshot:rein-postgres-prod-db-restore-2020-05-25"
  snapshot_identifier = "${var.postgres-snapshot}"

  iam_database_authentication_enabled = true

}

