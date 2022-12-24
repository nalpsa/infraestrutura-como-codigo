#!/bin/bash
echo "Criando os deployments...."
kubectl apply -f ./db-deployment.yaml --record
kubectl apply -f ./app-deployment.yaml --record