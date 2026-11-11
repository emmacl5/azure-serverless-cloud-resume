output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.cloud_resume.name
}

output "resource_group_id" {
  description = "Resource ID of the created resource group"
  value       = azurerm_resource_group.cloud_resume.id
}

output "static_web_app_name" {
  description = "Name of the Static Web App"
  value       = azurerm_static_web_app.cloud_resume.name
}

output "static_web_app_id" {
  description = "Resource ID of the Static Web App"
  value       = azurerm_static_web_app.cloud_resume.id
}

output "static_web_app_default_hostname" {
  description = "Default hostname of the Static Web App"
  value       = azurerm_static_web_app.cloud_resume.default_host_name
}

output "static_web_app_url" {
  description = "Full HTTPS URL of the Static Web App"
  value       = "https://${azurerm_static_web_app.cloud_resume.default_host_name}"
}
