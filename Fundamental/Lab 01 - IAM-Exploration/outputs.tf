output "iam_user_name" {
  value = aws_iam_user.lab_user.name
}

output "iam_group_name" {
  value = aws_iam_group.lab_group.name
}
