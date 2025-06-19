#grant Lambda functions necessary permissions to execute
resource "aws_iam_role" "lambda_execution_role" {          
  name = var.lambda_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Effect    = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

#policy to the Lambda IAM role, allowing it to write logs to CloudWatch.
resource "aws_iam_policy_attachment" "lambda_basic_execution" {
  name       = "${var.lambda_role_name}-policy-attach"
  roles      = [aws_iam_role.lambda_execution_role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

#
resource "aws_lambda_function" "test" {
  filename         = var.lambda_zip_path
  function_name    = var.function_name
  role             = aws_iam_role.lambda_execution_role.arn
  handler          = var.handler
  runtime          = var.runtime
  source_code_hash = filebase64sha256(var.lambda_zip_path)
  timeout          = 60

  environment {
    variables = var.environment_variables
  }
}