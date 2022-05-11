resource "aws_iam_user" "user" {
    name = "Lucy"
    tags = {
        Description = "Help Desk Tier 1"
    }
}

resource "aws_iam_user_policy_attachment" "pass_policy" {
    user = aws_iam_user.user.name
    policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
}