resource "google_database_migration_service_connection_profile" "database_migration_service_connection_profiles" {
  for_each = var.database_migration_service_connection_profiles

  connection_profile_id = each.value.connection_profile_id
  deletion_policy       = each.value.deletion_policy
  display_name          = each.value.display_name
  labels                = each.value.labels
  location              = each.value.location
  project               = each.value.project
  role                  = each.value.role

  dynamic "alloydb" {
    for_each = each.value.alloydb != null ? [each.value.alloydb] : []
    content {
      cluster_id = alloydb.value.cluster_id
      dynamic "settings" {
        for_each = alloydb.value.settings != null ? [alloydb.value.settings] : []
        content {
          initial_user {
            password = settings.value.initial_user.password
            user     = settings.value.initial_user.user
          }
          labels = settings.value.labels
          dynamic "primary_instance_settings" {
            for_each = settings.value.primary_instance_settings != null ? [settings.value.primary_instance_settings] : []
            content {
              database_flags = primary_instance_settings.value.database_flags
              id             = primary_instance_settings.value.id
              labels         = primary_instance_settings.value.labels
              machine_config {
                cpu_count = primary_instance_settings.value.machine_config.cpu_count
              }
            }
          }
          vpc_network = settings.value.vpc_network
        }
      }
    }
  }

  dynamic "cloudsql" {
    for_each = each.value.cloudsql != null ? [each.value.cloudsql] : []
    content {
      dynamic "settings" {
        for_each = cloudsql.value.settings != null ? [cloudsql.value.settings] : []
        content {
          activation_policy     = settings.value.activation_policy
          auto_storage_increase = settings.value.auto_storage_increase
          cmek_key_name         = settings.value.cmek_key_name
          collation             = settings.value.collation
          data_disk_size_gb     = settings.value.data_disk_size_gb
          data_disk_type        = settings.value.data_disk_type
          database_flags        = settings.value.database_flags
          database_version      = settings.value.database_version
          edition               = settings.value.edition
          dynamic "ip_config" {
            for_each = settings.value.ip_config != null ? [settings.value.ip_config] : []
            content {
              dynamic "authorized_networks" {
                for_each = ip_config.value.authorized_networks != null ? ip_config.value.authorized_networks : []
                content {
                  expire_time = authorized_networks.value.expire_time
                  label       = authorized_networks.value.label
                  ttl         = authorized_networks.value.ttl
                  value       = authorized_networks.value.value
                }
              }
              enable_ipv4     = ip_config.value.enable_ipv4
              private_network = ip_config.value.private_network
              require_ssl     = ip_config.value.require_ssl
            }
          }
          root_password             = settings.value.root_password
          source_id                 = settings.value.source_id
          storage_auto_resize_limit = settings.value.storage_auto_resize_limit
          tier                      = settings.value.tier
          user_labels               = settings.value.user_labels
          zone                      = settings.value.zone
        }
      }
    }
  }

  dynamic "mysql" {
    for_each = each.value.mysql != null ? [each.value.mysql] : []
    content {
      cloud_sql_id = mysql.value.cloud_sql_id
      host         = mysql.value.host
      password     = mysql.value.password
      port         = mysql.value.port
      dynamic "ssl" {
        for_each = mysql.value.ssl != null ? [mysql.value.ssl] : []
        content {
          ca_certificate     = ssl.value.ca_certificate
          client_certificate = ssl.value.client_certificate
          client_key         = ssl.value.client_key
          type               = ssl.value.type
        }
      }
      username = mysql.value.username
    }
  }

  dynamic "oracle" {
    for_each = each.value.oracle != null ? [each.value.oracle] : []
    content {
      database_service = oracle.value.database_service
      dynamic "forward_ssh_connectivity" {
        for_each = oracle.value.forward_ssh_connectivity != null ? [oracle.value.forward_ssh_connectivity] : []
        content {
          hostname    = forward_ssh_connectivity.value.hostname
          password    = forward_ssh_connectivity.value.password
          port        = forward_ssh_connectivity.value.port
          private_key = forward_ssh_connectivity.value.private_key
          username    = forward_ssh_connectivity.value.username
        }
      }
      host     = oracle.value.host
      password = oracle.value.password
      port     = oracle.value.port
      dynamic "private_connectivity" {
        for_each = oracle.value.private_connectivity != null ? [oracle.value.private_connectivity] : []
        content {
          private_connection = private_connectivity.value.private_connection
        }
      }
      dynamic "ssl" {
        for_each = oracle.value.ssl != null ? [oracle.value.ssl] : []
        content {
          ca_certificate     = ssl.value.ca_certificate
          client_certificate = ssl.value.client_certificate
          client_key         = ssl.value.client_key
        }
      }
      dynamic "static_service_ip_connectivity" {
        for_each = oracle.value.static_service_ip_connectivity != null ? [oracle.value.static_service_ip_connectivity] : []
        content {
        }
      }
      username = oracle.value.username
    }
  }

  dynamic "postgresql" {
    for_each = each.value.postgresql != null ? [each.value.postgresql] : []
    content {
      alloydb_cluster_id = postgresql.value.alloydb_cluster_id
      cloud_sql_id       = postgresql.value.cloud_sql_id
      database           = postgresql.value.database
      host               = postgresql.value.host
      password           = postgresql.value.password
      port               = postgresql.value.port
      dynamic "private_connectivity" {
        for_each = postgresql.value.private_connectivity != null ? [postgresql.value.private_connectivity] : []
        content {
          private_connection = private_connectivity.value.private_connection
        }
      }
      dynamic "ssl" {
        for_each = postgresql.value.ssl != null ? [postgresql.value.ssl] : []
        content {
          ca_certificate     = ssl.value.ca_certificate
          client_certificate = ssl.value.client_certificate
          client_key         = ssl.value.client_key
          type               = ssl.value.type
        }
      }
      username = postgresql.value.username
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

