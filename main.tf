resource "azurerm_key_vault" "example" {
  name                       = "my-key-vault"
  resource_group_name        = azurerm_resource_group.example.name
  location                   = "West US"
  enabled_for_disk_encryption = true
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 14
  purge_protection_enabled   = true
}
