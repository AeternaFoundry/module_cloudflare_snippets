variable "snippets" {
  description = <<EOT
Map of snippets, attributes below
Required:
    - files
    - metadata
    - snippet_name
    - zone_id
EOT

  type = map(object({
    files = list(string)
    metadata = object({
      main_module = string
    })
    snippet_name = string
    zone_id      = string
  }))
}

