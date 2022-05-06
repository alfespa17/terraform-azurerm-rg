locals {
  rg_name   = lower(format("%s-%s-rg", var.name, random_string.name_suffix.result))
}