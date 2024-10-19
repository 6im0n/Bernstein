#!/bin/bash

# This script is used to clean up: deployment, service, and pod, etc...

echo "Cleaning up the cluster..."
# Delete all the resources in the cluster
echo -e "\e[33m[Info] cleaning up the deployment:\e[0m"
kubectl delete deployment --all
echo -e "\e[33m[Info] cleaning up the service:\e[0m"
kubectl delete service --all
echo -e "\e[33m[Info] cleaning up the pod:\e[0m"
kubectl delete pod --all
echo -e "\e[33m[Info] cleaning up the configmap:\e[0m"
kubectl delete configmap --all
echo -e "\e[33m[Info] cleaning up the secret:\e[0m"
kubectl delete secret --all
echo -e "\e[33m[Info] cleaning up the ingress:\e[0m"
kubectl delete ingress --all
echo -e "\e[33m[Info] cleaning up the pvc:\e[0m"
kubectl delete pvc --all
echo -e "\e[33m[Info] cleaning up the pv:\e[0m"
kubectl delete pv --all
echo -e "\e[33m[Info] cleaning up cadaisor:\e[0m"
kubectl delete daemonset cadvisor -n kube-system
echo -e "\e[33m[Info] cleaning up traefik:\e[0m"
kubectl delete clusterrole traefik-rbac
kubectl delete serviceaccount traefik-rbac -n kube-public
kubectl delete clusterrolebinding traefik-rbac
kubectl delete deployment traefik -n kube-public
kubectl delete service traefik-service -n kube-public

#alternative way to clean up the cluster
#for file in $(ls *.yaml); do
#  kubectl delete -f $file
#done