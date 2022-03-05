# Linode Provider definition
terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = var.token
}

resource "linode_instance" "stop-russia-0" {
  label = "stop-russia-0"
  region = var.region
  group = var.group
  image = var.image
  type = var.type
  authorized_keys = [var.authorized_keys]
  root_pass = var.root_pass
}

# розкомментуй додаткові блоки `resource "linode_instance" "stop-russia-N` нижче
# uncomment additional `resource "linode_instance" "stop-russia-N` blocks below

# resource "linode_instance" "stop-russia-1" {
#         label = "stop-russia-1"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-2" {
#         label = "stop-russia-2"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-3" {
#         label = "stop-russia-3"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-4" {
#         label = "stop-russia-4"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-5" {
#         label = "stop-russia-5"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-6" {
#         label = "stop-russia-6"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-7" {
#         label = "stop-russia-7"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-8" {
#         label = "stop-russia-8"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# resource "linode_instance" "stop-russia-9" {
#         label = "stop-russia-9"
#         region = var.region
#         group = var.group
#         image = var.image
#         type = var.type
#         authorized_keys = [var.authorized_keys]
#         root_pass = var.root_pass
# }

# або зкопіюй додаткові блоки `resource "linode_instance" "stop-russia-N` тут
# or replicate additional `resource "linode_instance" "stop-russia-N` blocks here
