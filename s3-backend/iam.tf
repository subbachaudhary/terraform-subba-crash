resource "aws_iam_user" "test-user" {
  count = 3
  name  = "subba-test-user-${count.index}"
}
resource "aws_iam_group" "developers" {
  name = "developers"

}
resource "aws_iam_access_key" "lb" {
  user    = aws_iam_user.lb.name
  pgp_key = "keybase:some_person_that_exists"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "test"
  user = aws_iam_user.lb.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

output "secret" {
  value = aws_iam_access_key.lb.encrypted_secret
}
resource "aws_iam_user" "test" {
  name = "test"
  path = "/test/"
}

resource "aws_iam_access_key" "test" {
  user = aws_iam_user.test.name
}