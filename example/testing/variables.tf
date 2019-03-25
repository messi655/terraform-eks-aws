variable "region" {
  default = "us-west-2"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = "list"

  default = [
    "133332633228",
  ]
}

variable "map_accounts_count" {
  description = "The count of accounts in the map_accounts list."
  type        = "string"
  default     = 2
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      role_arn = "arn:aws:iam::133332633228:role/testing-eks-prod"
      username = "testing-eks-prod"
      group    = "system:masters"
    },
  ]
}

variable "map_roles_count" {
  description = "The count of roles in the map_roles list."
  type        = "string"
  default     = 1
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      user_arn = "arn:aws:iam::133332633228:user/testing-eks-prod"
      username = "testing-eks-prod"
      group    = "system:masters"
    },

  ]
}

variable "map_users_count" {
  description = "The count of roles in the map_users list."
  type        = "string"
  default     = 1
}


variable "private_subnets" {
  type    = "list"
  default = ["subnet-0b21de35421ec5213", "subnet-0f9f004ff193441fd"]
  
}

variable "vpc_id" {
  type  = "string"
  default = "vpc-0b21807b02e1a3b85"
  
}

variable "subnets" {
  type  = "list"
  default = ["subnet-02714292e2ed69bcb", "subnet-0b21de35421ec5213", "subnet-0c905a8ff0f20e61a", "subnet-0f9f004ff193441fd"]
}

variable "cluster_name" {
  type  = "string"
  default = "ts"
  
}
