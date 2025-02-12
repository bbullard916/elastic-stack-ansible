ansible-playbook site.yml -i hosts.ini -e="ansible_ssh_private_key_file=../../server.pem" -e "generateca=yes
