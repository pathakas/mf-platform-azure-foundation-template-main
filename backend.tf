terraform {
  cloud {
    organization = "Mccain_Foods"
    workspaces {
      name = "parameter-foundation-workspace-name"
    }
  }
}