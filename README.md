# Nginx Load Balancer with Ansible and Terraform

This repository contains Ansible and Terraform scripts to deploy a production environment with an Nginx load balancer and multiple web servers on OpenStack.

## Prerequisites

1. **OpenStack Account**: You need an OpenStack account with appropriate credentials.
2. **Terraform**: Ensure Terraform is installed on your local machine.
3. **Ansible**: Ensure Ansible is installed on your local machine.

## Directory Structure

```bash
Nginx-LB-w-Ansible
├── ansible
│   ├── ansible.cfg
│   ├── files
│   │   ├── nginx.conf
│   │   └── nginx_proxy.conf
│   ├── inventory
│   │   └── csc.ini
│   ├── pb.yml
│   └── templates
│       └── index.html.j2
├── README.md
├── ssh
│   └── config
└── Terraform
    ├── main.tf
    └── providers.tf
```

## File Details

### Terraform Configuration

#### `providers.tf`

This file configures the OpenStack provider for Terraform. Replace `<YOUR_USERNAME>`, `<YOUR_PASSWORD>`, `<YOUR_KEYPAIR>`, `<PUBLIC_IP>`, and `<PRIVATE_IP>` with your actual values.

#### `main.tf`

This file defines the infrastructure components such as networks, subnets, routers, security groups, and virtual machines.

### Ansible Configuration

#### `ansible.cfg`

Ansible configuration file.

#### `pb.yml`

The Ansible playbook to configure the Nginx load balancer and web servers.

#### `files/nginx.conf`

Nginx configuration file for individual web servers.

#### `files/nginx_proxy.conf`

Nginx configuration file for the load balancer.

#### `inventory/csc.ini`

Ansible inventory file specifying the groups and hosts.

#### `templates/index.html.j2`

Jinja2 template for the default web page served by Nginx.

#### `ssh/config`

SSH configuration file specifying connection details for JumpHost and web servers.

## Setup Instructions

1. **Terraform Configuration:**

   - Update the `providers.tf` file with your OpenStack credentials.
   - Update the `main.tf` file with your specific network and router details.
   - Run `terraform init` and `terraform apply` to deploy the infrastructure.

2. **Ansible Configuration:**

   - Update the `csc.ini` file in the `ansible/inventory` directory.
   - Update the SSH configuration in the `ssh/config` file with your keypair details.
   - Run Ansible playbook: `cd ansible && ansible-playbook pb.yml`.

3. **Accessing the Environment:**

   - The load balancer is accessible at `<PUBLIC_IP>`.
   - Web servers can be accessed using SSH with the configured keypair.

