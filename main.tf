 provider "aws" {
   region = "eu-north-1"
 }


 resource "aws_iam_role_policy_attachment" "lambda_policy" {
   role       = aws_iam_role.lambda_role.name
   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
 }

 resource "aws_lambda_function" "my_lambda" {
   function_name = "nodejs_lambda_function"
   role          = aws_iam_role.lambda_role.arn
   handler       = "index.handler"
   runtime       = "nodejs18.x"
   filename      = "lambda_function_payload.zip"
   source_code_hash = filebase64sha256("lambda_function_payload.zip")
 }
