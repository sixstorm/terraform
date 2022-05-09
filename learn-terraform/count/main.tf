resource "local_sensitive_file" "file" {
    filename = each.value
    content = var.secretmessage
    for_each = toset(var.files)
}