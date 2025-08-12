terraform {
  cloud {
    organization = "{{ TFE_ORGANIZATION }}"
    workspaces {
      name = "{{ TFE_WORKSPACE_NAME }}"
    }
  }
}
