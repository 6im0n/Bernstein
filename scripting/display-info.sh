#!/bin/bash

# This script is used to display the information of the cluster

#Prompt the user to enter the what he want to display
echo -e "\e[31m[Info] What do you want to display?\e[0m"

# Display the options

echo -e "\e[32m 1.  Display pods\e[0m"
echo -e "\e[32m 2.  Display services\e[0m"
echo -e "\e[32m 3.  Display deployments\e[0m"
echo -e "\e[32m 4.  Display configmaps\e[0m"
echo -e "\e[32m 5.  Display secrets\e[0m"
echo -e "\e[32m 6.  Display ingresses\e[0m"
echo -e "\e[32m 7.  Display pvcs\e[0m"
echo -e "\e[32m 8.  Display pvs\e[0m"
echo -e "\e[32m 9.  Display demonsets\e[0m"
echo -e "\e[32m 10. Display nodes\e[0m"
echo -e "\e[32m 11. Display namespaces\e[0m"
echo -e "\e[32m 12. Display events\e[0m"

# Read the user input
read -p "Enter your choice: " choice

# Display the information based on the user input
case $choice in
  1)
    echo -e "\e[33m[Info] Displaying all the pods:\e[0m"
    kubectl get pods
    echo -e "\e[33m[Info] Displaying all the pods in kube-public namespace:\e[0m"
    kubectl get pods -n kube-public
    ;;
  2)
    echo -e "\e[33m[Info] Displaying all the services:\e[0m"
    kubectl get services
    echo -e "\e[33m[Info] Displaying all the services in kube-public namespace:\e[0m"
    kubectl get services -n kube-public
    ;;
  3)
    echo -e "\e[33m[Info] Displaying all the deployments:\e[0m"
    kubectl get deployments
    echo -e "\e[33m[Info] Displaying all the deployments in kube-public namespace:\e[0m"
    kubectl get deployments -n kube-public
    ;;
  4)
    echo -e "\e[33m[Info] Displaying all the configmaps:\e[0m"
    kubectl get configmaps
    ;;
  5)
    echo -e "\e[33m[Info] Displaying all the secrets:\e[0m"
    kubectl get secrets
    ;;
  6)
    echo -e "\e[33m[Info] Displaying all the ingresses:\e[0m"
    kubectl get ingresses
    ;;
  7)
    echo -e "\e[33m[Info] Displaying all the pvcs:\e[0m"
    kubectl get pvcs
    ;;
  8)
    echo -e "\e[33m[Info] Displaying all the pvs:\e[0m"
    kubectl get pvs
    ;;
  9)
    echo -e "\e[33m[Info] Displaying all the daemonset:\e[0m"
    kubectl get daemonsets -A
    ;;
  10)
    echo -e "\e[33m[Info] Displaying all the nodes:\e[0m"
    kubectl get nodes
    ;;
  11)
    echo -e "\e[33m[Info] Displaying all the namespaces:\e[0m"
    kubectl get namespaces
    ;;
  12)
    echo -e "\e[33m[Info] Displaying all the events:\e[0m"
    kubectl get events
    ;;
  *)
    echo -e "\e[31m[Error] Invalid choice. Please enter a valid choice.\e[0m"
    ;;
esac
