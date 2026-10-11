resource "cloudflare_snippets" "snippets" {
  for_each = var.snippets

  files        = each.value.files
  metadata     = each.value.metadata
  snippet_name = each.value.snippet_name
  zone_id      = each.value.zone_id
}

