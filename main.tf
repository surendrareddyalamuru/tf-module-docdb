resource "aws_docdb_cluster" "docdb" {
  for_each = var.docdb
  cluster_identifier      = "${var.env}-roboshop-docdb"
  engine                  = each.value.engine
  master_username         = "admin1"
  master_password         = "mustbeeightchars"
  skip_final_snapshot     = true
}