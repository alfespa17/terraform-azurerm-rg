locals {
  rg_name   = lower(format("sandbox-%s-rg", random_string.name_suffix.result))
  user_principal_name = lower(format("user%s@%s",  random_string.name_suffix.result, var.domain))
  mail_nickname = lower(format("sandbox-%s",  random_string.name_suffix.result))
}
