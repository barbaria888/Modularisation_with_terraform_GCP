# Modularisation_with_terraform_GCP

This Terraform project provisions a complete network and compute environment on Google Cloud Platform (GCP), including:

- An **auto-mode VPC network**
- A **firewall rule** allowing HTTP, SSH, RDP, and ICMP traffic
- Two **Compute Engine VM instances** deployed via a reusable Terraform module

---

## 📁 Project Structure

├── provider.tf # GCP provider configuration
├── mynetwork.tf # VPC, firewall, and VM instance module usage
└── instance/ # Reusable module for GCE instances
    ├── main.tf # Instance resource definition
    └── variables.tf # Input variables for the instance module
