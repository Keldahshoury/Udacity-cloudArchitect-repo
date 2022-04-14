provider "aws"{
  access_key = "AKIAQ3PC6FSRFN4N422R"
  secret_key = "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"
  region = "us-east-1"
  }



resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = "${aws_iam_role.greet_lamda_role.id}"
  policy = "${file("iam/lambda-policy.json")}"
}

resource "aws_iam_role" "greet_lamda_role" {
    name = "greet_lamda_role"
    assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
  EOF
}
