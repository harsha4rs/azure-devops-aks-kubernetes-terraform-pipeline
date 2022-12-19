# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type        = string
  description = "Azure Region where all these resources will be provisioned"
  default     = "East US"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
  default     = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type        = string
  description = "This variable defines the Environment"
  #default     = "dev2"
}


# AKS Input Variables

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  #default     = "~/ssh-keys-teerraform-aks-devops/aks-terraform-devops-ssh-key-ububtu"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}

# rback enabled
variable "rbac_aad_azure_rbac_enabled" {
  type        = bool
  description = "(Optional) Is Role Based Access Control based on Azure AD enabled?"
  default     = null
}

# rback tenant id
variable "rbac_aad_tenant_id" {
  type        = string
  description = "The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used."
  default     = null
}
# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type        = string
  default     = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type        = string
  default     = "P@ssw0rd123456"
  description = "This variable defines the Windows admin password k8s Worker nodes"
}

