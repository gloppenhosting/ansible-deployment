#!/bin/bash
bash make-discovery-url.sh
ansible-playbook 02_create_cluster.yml 03_add_configs.yml 04_add_units.yml -i inventory/coreos -f 1000
