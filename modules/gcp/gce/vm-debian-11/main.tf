
provider "google" {
    project = var.projectID
    region = var.regions["london"]
    zone = var.zones["london-b"]
}

resource "google_compute_instance" "server_instance" {
    name            = var.server_instance_name
    machine_type    = "e2-small"
    metadata = {
        enable-oslogin = "TRUE"
    }
    
    labels = { 
        "creator" = "creator-user-name",
        "department" = "engineering"
    }

    boot_disk {
        initialize_params {
            # image   = "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
            image = "debian-cloud/debian-11"
            size = 40
        }
    }

        
    network_interface {
        network = "default"
        access_config {
            // get an external IP address
        }
    }

    
    # network_interface {
        # A default network is created fro all GCP projects
        # network     = google_compute_network.vpc_network.self_link
        # network       = var.vpc_network_name.self_link 
        # access_config {
            # Include this section to give the VM an external IP address
        # }
    # }
    
}