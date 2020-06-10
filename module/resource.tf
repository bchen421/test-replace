resource "null_resource" "resource-db" {
  triggers = {
    snap_id = var.snap_id
  }
}
