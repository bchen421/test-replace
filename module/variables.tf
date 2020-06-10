// Require SR Taxonomy Data

variable "sr_app" {
}

variable "sr_group" {
}

variable "sr_env" {
}

variable "sr_region" {
}

variable "sr_org" {
}

// RDS vars
variable "name" {
}

variable "username" {
}

variable "password" {
}

variable "allocated_storage" {
}

variable "max_allocated_storage" {
  default = null
}

variable "storage_type" {
}

variable "engine_version" {
  default = "9.6.5"
}

variable "security_groups" {
}

variable "iops" {
  default = 0
}

variable "monitoring_interval" {
  default = 0
}

variable "instance_class" {
}

variable "db_subnet_group_name" {
}

variable "multi_az" {
}

variable "skip_final_snapshot" {
  default = false
}

variable "port" {
  default = 5432
}

variable "storage_encrypted" {
  default = true
}

variable "maintenance_window" {
}

variable "publicly_accessible" {
}

variable "replicate_source_db" {
}

variable "parameter_group_name" {
}

variable "option_group_name" {
}

variable "monitoring_role_arn" {
}

variable "allow_major_version_upgrade" {
}

variable "apply_immediately" {
}

variable "auto_minor_version_upgrade" {
}

variable "availability_zone" {
  default = ""
}

variable "backup_retention_period" {
}

variable "backup_window" {
}

variable "enable_iam_authentication" {
  default = true
}

variable "snapshot_identifier" {
  default = ""
}

variable "copy_tags_to_snapshot" {
  default = true
}

variable "ca_cert_identifier" {
  default = null
}

variable "deletion_protection" {
  default = true
}

