output "snippets_created_on" {
  description = "Map of created_on values across all snippets, keyed the same as var.snippets except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "snippets_files" {
  description = "Map of files values across all snippets, keyed the same as var.snippets except keys with no files are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.files if v.files != null && length(v.files) > 0 }
}
output "snippets_metadata" {
  description = "Map of metadata values across all snippets, keyed the same as var.snippets except keys with no metadata are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "snippets_modified_on" {
  description = "Map of modified_on values across all snippets, keyed the same as var.snippets except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "snippets_snippet_name" {
  description = "Map of snippet_name values across all snippets, keyed the same as var.snippets except keys with no snippet_name are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.snippet_name if v.snippet_name != null && length(v.snippet_name) > 0 }
}
output "snippets_zone_id" {
  description = "Map of zone_id values across all snippets, keyed the same as var.snippets except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_snippets.snippets : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

