#!/bin/bash

# This script is used to apply the configuration and run the application

echo -e "\e[33m[Info] Start cadavisor \e[0m"
kubectl apply -f cadvisor.daemonset.yaml

echo -e "\e[33m[Info] Start database \e[0m"
kubectl apply -f postgres.secret.yaml \
-f postgres.configmap.yaml \
-f postgres.volume.yaml \
-f postgres.deployment.yaml \
-f postgres.service.yaml

# Function to check if the PostgreSQL pod is running
check_postgres_pod() {
  while true; do
    pod_status=$(kubectl get pods --no-headers | grep postgres | grep Running)
    if [[ "$pod_status" != "" ]]; then
      sleep 5
      echo -e "\e[33m[Info] PostgreSQL pod is running \e[0m"
      break
    else
      echo -e "\e[33m[Info] Waiting for PostgreSQL pod to be running... \e[0m"
      sleep 5
    fi
  done
}

# Check PostgreSQL pod status
check_postgres_pod

echo -e "\e[33m[Info] Create database schematics \e[0m"
echo "CREATE TABLE votes (id text PRIMARY KEY, vote text NOT NULL);" | kubectl exec -i $(kubectl get pods --no-headers -o custom-columns=":metadata.name" | grep postgres) -c postgres -- psql -U Paul -d postgres_db

echo -e "\e[33m[Info] Start caching, redis \e[0m"
kubectl apply -f redis.configmap.yaml \
-f redis.deployment.yaml \
-f redis.service.yaml

echo -e "\e[33m[Info] Start poll, worker, and result together \e[0m"
kubectl apply -f poll.deployment.yaml \
-f worker.deployment.yaml \
-f result.deployment.yaml \
-f poll.service.yaml \
-f result.service.yaml \
-f poll.ingress.yaml \
-f result.ingress.yaml

#echo -e "\e[33m[Info] Start add DNS" \e[0m
#echo " $(kubectl get nodes -o jsonpath='{ $.items[*].status.addresses[?(@.type =="ExternalIP")].address }') poll.dop.io result.dop.io" | sudo tee -a /etc/hosts

echo -e "\e[33m[Info] Start traefik \e[0m"
kubectl apply -f traefik.rbac.yaml \
-f traefik.deployment.yaml \
-f traefik.service.yaml
