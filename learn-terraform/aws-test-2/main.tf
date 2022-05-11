resource "aws_iam_user" "users" {
    count = length(var.project-sapphire-users)
    #foreach = toset(var.project-sapphire-users)
    # Want to use the count metadata argument, not foreach
    name = var.project-sapphire-users[count.index]
}