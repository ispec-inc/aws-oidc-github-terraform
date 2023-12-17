provider "aws" {
  region = "ap-southeast-1"
}

module "oidc-github" {
  source  = "github.com/ispec-inc/aws-oidc-github-terraform"
  version = "1.0.0"

  org  = "ispec-inc"
  repo = "aws-oidc-github-terraform"

  role_name   = "oidc-github-role"
  policy_name = "oidc-github-policy"

  policy_json = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "sts:GetCallerIdentity",
          "sts:AssumeRoleWithWebIdentity",
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetRepositoryPolicy",
          "ecr:DescribeRepositories",
          "ecr:ListImages",
          "ecr:DescribeImages",
          "ecr:BatchGetImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload",
          "ecr:PutImage",
        ]
        Resource = "*"
      },
    ]
  })
}
