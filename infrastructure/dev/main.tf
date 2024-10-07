resource "random_uuid" "uuid" {

}

resource "azurerm_resource_group" "main" {
  name     = "rg-sveltekit-app"
  location = var.default_location
  tags = {
    environment = var.environment
    identifier  = random_uuid.uuid.result
  }
}

resource "azurerm_static_site" "main" {
  name                = "sveltekit-app"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku_size = "Free"
}
