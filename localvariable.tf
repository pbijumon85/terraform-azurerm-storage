locals {
  l_rg_name    = "${var.env}-${var.rg_name}"
  l_store_name = "${var.env}${var.rg_name}${var.store_acc_name}"

}