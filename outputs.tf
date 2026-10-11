output "database_migration_service_connection_profiles_id" {
  description = "Map of id values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no id are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_service_connection_profiles_alloydb" {
  description = "Map of alloydb values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no alloydb are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => one(v.alloydb) if v.alloydb != null && length(v.alloydb) > 0 }
  sensitive   = true
}
output "database_migration_service_connection_profiles_cloudsql" {
  description = "Map of cloudsql values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no cloudsql are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => one(v.cloudsql) if v.cloudsql != null && length(v.cloudsql) > 0 }
  sensitive   = true
}
output "database_migration_service_connection_profiles_connection_profile_id" {
  description = "Map of connection_profile_id values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no connection_profile_id are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.connection_profile_id if v.connection_profile_id != null && length(v.connection_profile_id) > 0 }
}
output "database_migration_service_connection_profiles_create_time" {
  description = "Map of create_time values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no create_time are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "database_migration_service_connection_profiles_dbprovider" {
  description = "Map of dbprovider values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no dbprovider are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.dbprovider if v.dbprovider != null && length(v.dbprovider) > 0 }
}
output "database_migration_service_connection_profiles_deletion_policy" {
  description = "Map of deletion_policy values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no deletion_policy are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "database_migration_service_connection_profiles_display_name" {
  description = "Map of display_name values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no display_name are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_migration_service_connection_profiles_effective_labels" {
  description = "Map of effective_labels values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no effective_labels are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "database_migration_service_connection_profiles_error" {
  description = "Map of error values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no error are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.error if v.error != null && length(v.error) > 0 }
}
output "database_migration_service_connection_profiles_labels" {
  description = "Map of labels values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no labels are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "database_migration_service_connection_profiles_location" {
  description = "Map of location values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no location are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.location if v.location != null && length(v.location) > 0 }
}
output "database_migration_service_connection_profiles_mysql" {
  description = "Map of mysql values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no mysql are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => one(v.mysql) if v.mysql != null && length(v.mysql) > 0 }
  sensitive   = true
}
output "database_migration_service_connection_profiles_name" {
  description = "Map of name values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no name are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "database_migration_service_connection_profiles_oracle" {
  description = "Map of oracle values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no oracle are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => one(v.oracle) if v.oracle != null && length(v.oracle) > 0 }
  sensitive   = true
}
output "database_migration_service_connection_profiles_postgresql" {
  description = "Map of postgresql values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no postgresql are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => one(v.postgresql) if v.postgresql != null && length(v.postgresql) > 0 }
  sensitive   = true
}
output "database_migration_service_connection_profiles_project" {
  description = "Map of project values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no project are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.project if v.project != null && length(v.project) > 0 }
}
output "database_migration_service_connection_profiles_role" {
  description = "Map of role values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no role are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.role if v.role != null && length(v.role) > 0 }
}
output "database_migration_service_connection_profiles_state" {
  description = "Map of state values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no state are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_migration_service_connection_profiles_terraform_labels" {
  description = "Map of terraform_labels values across all database_migration_service_connection_profiles, keyed the same as var.database_migration_service_connection_profiles except keys with no terraform_labels are omitted"
  value       = { for k, v in google_database_migration_service_connection_profile.database_migration_service_connection_profiles : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

