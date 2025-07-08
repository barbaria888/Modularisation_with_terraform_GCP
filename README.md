# Modularisation_with_terraform_GCP

This Terraform project provisions a complete network and compute environment on Google Cloud Platform (GCP), including:

- An **auto-mode VPC network**
- A **firewall rule** allowing HTTP, SSH, RDP, and ICMP traffic
- Two **Compute Engine VM instances** deployed via a reusable Terraform module

---

## 📁 Project Structure

├── provider.tf <br>
├── mynetwork.tf<br>
└── instance/ <br>
&nbsp;&nbsp;&nbsp;├── main.tf <br>
&nbsp;&nbsp;&nbsp;└── variables.tf <br>
