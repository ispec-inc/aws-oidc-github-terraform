provider "aws" {
  region = "ap-northeast-1"
}

module "oidc_github" {
  source = "github.com/ispec-inc/aws-oidc-github-terraform?ref=v1.0.0"

  org  = "ispec-inc"
  repo = "your-awesome-repo"

  role_name   = "oidc-role"
  policy_name = "oidc-policy"

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
          "iam:PassRole",
        ]
        Resource = "*"
      },
    ]
  })
}
