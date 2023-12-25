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
