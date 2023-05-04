

provider "google" {
    project = var.project_name
    region = var.preferred_region
    zone = var.preferred_zone
}

resource "google_bigquery_dataset" "create_dataset" {

    dataset_id = var.dataset_id
    friendly_name = var.friendly_name
    description = var.dataset_description
    location = var.dataset_location
    default_table_expiration_ms = var.default_table_expiration

    labels = var.dataset_labels

}