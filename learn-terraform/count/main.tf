resource "local_sensitive_file" "file" {
    filename = each.value
    content = "${random_password.password.result}"
    for_each = toset(var.files)
}

resource "random_password" "password" {
    length = 16
    special = true
}