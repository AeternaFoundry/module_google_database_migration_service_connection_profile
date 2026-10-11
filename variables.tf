variable "database_migration_service_connection_profiles" {
  description = <<EOT
Map of database_migration_service_connection_profiles, attributes below
Required:
    - connection_profile_id
Optional:
    - deletion_policy
    - display_name
    - labels
    - location
    - project
    - role
    - alloydb (block):
        - cluster_id (required)
        - settings (optional, block):
            - initial_user (required, block):
                - password (required)
                - user (required)
            - labels (optional)
            - primary_instance_settings (optional, block):
                - database_flags (optional)
                - id (required)
                - labels (optional)
                - machine_config (required, block):
                    - cpu_count (required)
            - vpc_network (required)
    - cloudsql (block):
        - settings (optional, block):
            - activation_policy (optional)
            - auto_storage_increase (optional)
            - cmek_key_name (optional)
            - collation (optional)
            - data_disk_size_gb (optional)
            - data_disk_type (optional)
            - database_flags (optional)
            - database_version (optional)
            - edition (optional)
            - ip_config (optional, block):
                - authorized_networks (optional, block):
                    - expire_time (optional)
                    - label (optional)
                    - ttl (optional)
                    - value (required)
                - enable_ipv4 (optional)
                - private_network (optional)
                - require_ssl (optional)
            - root_password (optional)
            - source_id (required)
            - storage_auto_resize_limit (optional)
            - tier (optional)
            - user_labels (optional)
            - zone (optional)
    - mysql (block):
        - cloud_sql_id (optional)
        - host (optional)
        - password (optional)
        - port (optional)
        - ssl (optional, block):
            - ca_certificate (optional)
            - client_certificate (optional)
            - client_key (optional)
            - type (optional)
        - username (optional)
    - oracle (block):
        - database_service (required)
        - forward_ssh_connectivity (optional, block):
            - hostname (required)
            - password (optional)
            - port (required)
            - private_key (optional)
            - username (required)
        - host (required)
        - password (required)
        - port (required)
        - private_connectivity (optional, block):
            - private_connection (required)
        - ssl (optional, block):
            - ca_certificate (optional)
            - client_certificate (optional)
            - client_key (optional)
        - static_service_ip_connectivity (optional, block):
        - username (required)
    - postgresql (block):
        - alloydb_cluster_id (optional)
        - cloud_sql_id (optional)
        - database (optional)
        - host (optional)
        - password (optional)
        - port (optional)
        - private_connectivity (optional, block):
            - private_connection (required)
        - ssl (optional, block):
            - ca_certificate (optional)
            - client_certificate (optional)
            - client_key (optional)
            - type (optional)
        - username (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connection_profile_id = string
    deletion_policy       = optional(string)
    display_name          = optional(string)
    labels                = optional(map(string))
    location              = optional(string)
    project               = optional(string)
    role                  = optional(string)
    alloydb = optional(object({
      cluster_id = string
      settings = optional(object({
        initial_user = object({
          password = string
          user     = string
        })
        labels = optional(map(string))
        primary_instance_settings = optional(object({
          database_flags = optional(map(string))
          id             = string
          labels         = optional(map(string))
          machine_config = object({
            cpu_count = number
          })
        }))
        vpc_network = string
      }))
    }))
    cloudsql = optional(object({
      settings = optional(object({
        activation_policy     = optional(string)
        auto_storage_increase = optional(bool)
        cmek_key_name         = optional(string)
        collation             = optional(string)
        data_disk_size_gb     = optional(string)
        data_disk_type        = optional(string)
        database_flags        = optional(map(string))
        database_version      = optional(string)
        edition               = optional(string)
        ip_config = optional(object({
          authorized_networks = optional(list(object({
            expire_time = optional(string)
            label       = optional(string)
            ttl         = optional(string)
            value       = string
          })))
          enable_ipv4     = optional(bool)
          private_network = optional(string)
          require_ssl     = optional(bool)
        }))
        root_password             = optional(string)
        source_id                 = string
        storage_auto_resize_limit = optional(string)
        tier                      = optional(string)
        user_labels               = optional(map(string))
        zone                      = optional(string)
      }))
    }))
    mysql = optional(object({
      cloud_sql_id = optional(string)
      host         = optional(string)
      password     = optional(string)
      port         = optional(number)
      ssl = optional(object({
        ca_certificate     = optional(string)
        client_certificate = optional(string)
        client_key         = optional(string)
        type               = optional(string)
      }))
      username = optional(string)
    }))
    oracle = optional(object({
      database_service = string
      forward_ssh_connectivity = optional(object({
        hostname    = string
        password    = optional(string)
        port        = number
        private_key = optional(string)
        username    = string
      }))
      host     = string
      password = string
      port     = number
      private_connectivity = optional(object({
        private_connection = string
      }))
      ssl = optional(object({
        ca_certificate     = optional(string)
        client_certificate = optional(string)
        client_key         = optional(string)
      }))
      static_service_ip_connectivity = optional(object({
      }))
      username = string
    }))
    postgresql = optional(object({
      alloydb_cluster_id = optional(string)
      cloud_sql_id       = optional(string)
      database           = optional(string)
      host               = optional(string)
      password           = optional(string)
      port               = optional(number)
      private_connectivity = optional(object({
        private_connection = string
      }))
      ssl = optional(object({
        ca_certificate     = optional(string)
        client_certificate = optional(string)
        client_key         = optional(string)
        type               = optional(string)
      }))
      username = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

