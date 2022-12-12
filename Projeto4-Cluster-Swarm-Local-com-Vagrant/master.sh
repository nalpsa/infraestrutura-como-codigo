#!/bin/bash
sudo su
docker swarm init --advertise-addr=20.20.20.1
docker swarm join-token worker | grep docker > /vagrant/worker.sh