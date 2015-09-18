Originially based on: https://github.com/dougbtv/docker-asterisk
Big shoutout for the initial work to https://github.com/dougbtv

Notes:
$ ansible-playbook 01_bootstrap_ansible_coreos.yml -i inventory/coreos
$ bash make-discovery-url.sh
$ ansible-playbook 02_create_cluster.yml -i inventory/coreos
$ ansible-playbook 03_add_configs.yml -i inventory/coreos
$ ansible-playbook 04_add_units.yml -i inventory/coreos
