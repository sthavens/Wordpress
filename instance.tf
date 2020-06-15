resource "google_compute_instance" "wordpress"{
    name = "wordpress"
    machine_type = "f1-micro"
    zone = var.GCP_ZONE

    tags = ["wordpress"]

    boot_disk{
        initialize_params{
            image = "ubuntu-1804-bionic-v20200610"
            size = 20
        }
    }

    #TODO: automatically create the network if it does not exist
    network_interface{
        network = "wordpress"
        access_config{

        }
        
    }

    

}

resource "google_compute_firewall" "wordpress-firewall" {
    name = "wordpress-firewall"
    network = "wordpress"

    allow{
        protocol = "tcp"
        ports = [80, 8080]
    }

    

    source_tags = ["wordpress"]
}
