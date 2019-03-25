variable "region" {
  default = "ap-southeast-1"
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
  default     = 1
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      role_arn = "arn:aws:iam::133332633228:role/staging-eks-prod"
      username = "staging-eks-prod"
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
      user_arn = "arn:aws:iam::133332633228:user/staging-eks-prod"
      username = "staging-eks-prod"
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
  default = ["subnet-0d0864778a94d2ab5", "subnet-001a253d1f8accae1", "subnet-078b6877023440b97"]
  
}

variable "vpc_id" {
  type  = "string"
  default = "vpc-9763aaf2"
  
}

variable "subnets" {
  type  = "list"
  default = ["subnet-011df7172332ffadc", "subnet-0369f9d1cc009b60e", "subnet-0624fa0e6009f89ee", "subnet-0d0864778a94d2ab5", "subnet-001a253d1f8accae1", "subnet-078b6877023440b97"]
}

variable "cluster_name" {
  type  = "string"
  default = "ts-eks-prod"
  
}

variable "ami_id" {
  type  = "string"
  default = "ami-030c789a75c8bfbca"
  
}

