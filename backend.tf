terraform {
  cloud {
    organization = "example-org-feb65b"
    workspaces {
      name = "{{ TFE_WORKSPACE_NAME }}"
    }
  }
}
