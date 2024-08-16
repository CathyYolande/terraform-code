

resource "aws_sns_topic" "demo" {
  name = "var.topic_name"
  tags = {
    team = "var.Team"
  }
}

resource "aws_sns_topic_subscription" "email_target" {
  topic_arn = "arn:aws:sns:us-east-1:654654271537:sns-Dev"
  protocol  = "email"
  endpoint  = "var.endpoint"
}
