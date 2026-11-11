# Azure Subscription Configuration
variable "subscription_id" {
  description = "Azure Subscription ID for resource deployment"
  type        = string
  sensitive   = true

  validation {
    condition     = can(regex("^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$", var.subscription_id))
    error_message = "Subscription ID must be a valid UUID format."
  }
}

# Resource Group Configuration
variable "resource_group_name" {
  description = "Name of the resource group for all cloud resume resources"
  type        = string
  default     = "rg-cloud-resume-prod"

  validation {
    condition     = can(regex("^[a-zA-Z0-9-_()]{1,90}$", var.resource_group_name))
    error_message = "Resource group name must be 1-90 characters: alphanumeric, hyphens, underscores, parentheses."
  }
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "westeurope"
}

variable "static_web_app_location" {
  description = "Azure region for Static Web App deployment (may differ from resource group)"
  type        = string
  default     = "eastus2"
}

# Static Web App Configuration
variable "static_web_app_name" {
  description = "Name of the Static Web App (globally unique across Azure)"
  type        = string
  default     = "emmacl5-cloud-resume"

  validation {
    condition     = can(regex("^[a-z0-9-]{2,60}$", var.static_web_app_name))
    error_message = "Static Web App name: 2-60 characters, lowercase alphanumeric and hyphens only."
  }
}

variable "sku_tier" {
  description = "SKU tier for Static Web App"
  type        = string
  default     = "Free"

  validation {
    condition     = contains(["Free", "Standard"], var.sku_tier)
    error_message = "SKU tier must be 'Free' or 'Standard'."
  }
}

variable "sku_size" {
  description = "SKU size for Static Web App"
  type        = string
  default     = "Free"

  validation {
    condition     = contains(["Free", "Standard"], var.sku_size)
    error_message = "SKU size must be 'Free' or 'Standard'."
  }
}

# GitHub Configuration
variable "github_repo_url" {
  description = "GitHub repository URL for the cloud resume project"
  type        = string
  default     = "https://github.com/emmacl5/azure-serverless-cloud-resume"
}

variable "github_branch" {
  description = "GitHub branch to deploy from"
  type        = string
  default     = "main"
}

# Build Configuration
variable "app_location" {
  description = "Path to frontend application code relative to repository root"
  type        = string
  default     = "frontend"
}

variable "output_location" {
  description = "Path to build output directory relative to app_location"
  type        = string
  default     = "dist"
}

variable "api_location" {
  description = "Path to API code relative to repository root (empty if no API yet)"
  type        = string
  default     = ""
}

# Tagging
variable "tags" {
  description = "Tags to apply to all Azure resources"
  type        = map(string)
  default = {
    Project     = "Azure Cloud Resume Challenge"
    Environment = "Production"
    ManagedBy   = "Terraform"
    Repository  = "https://github.com/emmacl5/azure-serverless-cloud-resume"
  }
}
