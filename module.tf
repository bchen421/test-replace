module "module-db" {
  source = "./module"

  snap_id = "${var.snap_id}"
}
