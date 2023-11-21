resource "aws_iam_user" "lab_user" {
  name = "lab_user"
}

resource "aws_iam_group" "lab_group" {
  name = "lab_group"
}

resource "aws_iam_group_policy_attachment" "lab_group_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  group      = aws_iam_group.lab_group.name
}

resource "aws_iam_user_group_membership" "lab_user_group_membership" {
  user   = aws_iam_user.lab_user.name
  groups = [aws_iam_group.lab_group.name]
}
