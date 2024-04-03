<p align="center">
  <img src="https://garutilorenzo.github.io/images/elk-logo.png?" alt="elk-logo"/>
</p>

# Install and configure the ELK stack (Ubuntu Only)

Install and configure the ELK stack:

* [elasticsearch](https://www.elastic.co/elasticsearch/)
* [logstash](https://www.elastic.co/logstash/)
* [kibana](https://www.elastic.co/kibana/)

Elastic Beats:

* [filebeat](https://www.elastic.co/beats/filebeat)
* [metricbeat](https://www.elastic.co/beats/metricbeat)
* [heartbeath](https://www.elastic.co/beats/heartbeat)

## Requirements

```
To preserve bandwidth we download elasticsearch and kibana on our Ansible machine you can replace with whatever version you require:
mkdir -p ~/elk_tar_path # <- you can customize this path by changing elasticsearch_local_tar_path variable
curl  -o ~/elk_tar_path/kibana-8.3.3-linux-x86_64.tar.gz https://artifacts.elastic.co/downloads/kibana/kibana-8.3.3-linux-x86_64.tar.gz
curl  -o ~/elk_tar_path/elk_tar_path/elasticsearch-<VERSION>-linux-x86_64.tar.gz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-<VERSION>-linux-x86_64.tar.gz

and we have to create the certificate directory, where elastic certificates will be stored:
mkdir -p ~/very_secure_dir # <- you can customize this path by changing elasticsearch_local_certs_dir variable

apt-get install python3 python3-pip
pip3 install pipenv

pipenv shell
pip install -r requirements.txt

Install ansible, ipaddr and netaddr:
```

## Roles documentation

You can refer to the README.md file in each role directory:

* [elasticsearch](roles/elasticsearch/)
* [kibana](roles/kibana/)
* [logstash](roles/logstash/)
* [beats](roles/beats/)

you can also explore all roles variables [here](docs/ROLES_VARS.md)

## Examples

[How](examples/) to use this Ansible collection

## Vagrant

To test this collection you can use [Vagrant](https://www.vagrantup.com/) and [Virtualbox](https://www.virtualbox.org/) to bring up a example infrastructure. Once you have downloaded this repo use Vagrant to start the virtual machines:

```
vagrant up
```

In the Vagrantfile you can inject your public ssh key directly in the authorized_keys of the vagrant user. You have to change the *CHANGE_ME* placeholder in the Vagrantfile. You can also adjust the number of the vm deployed by changing the NNODES variable (Default: 6)

