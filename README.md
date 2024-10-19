# 🩻 Bernstein

<p align="center">
<img width="800" height="400" src="https://www.adaltas.com/static/7b0de776c7410fd17b2e9e6c5ded2d38/d1a11/kubernetes.webp">
</p>

## **ℹ️ About**
The Bernstein project undertaken in the Third year at [{Epitech}](https://www.epitech.eu/) focuses on orchestrating a distributed application using Kubernetes.
The application consists of multiple services (Poll, Worker, Result, Redis, PostgreSQL) deployed in a multi-node cluster.
The aim is to learn and implement container orchestration, service deployment, and monitoring using Kubernetes.

## **📑 Project Info**
- [📦 Epitech private repository]()
- [📦 Group remote repository]()
- [📄 PDF Project](https://intra.epitech.eu/module/2024/B-DOP-500/NAN-5-1/acti-648231/project/file/B-DOP-500_bernstein.pdf)

### **📃 Description**

This project involves deploying a multi-service web application using Kubernetes. The application includes:

    Poll: A Python Flask application for gathering votes.
    Worker: A Java application that processes votes from Redis and stores them in PostgreSQL.
    Result: A Node.js application that retrieves and displays results from PostgreSQL.
    Redis: A queue to hold votes for processing.
    PostgreSQL: A database for persistent storage of processed votes.
    Traefik: A reverse proxy and load balancer.
    cAdvisor: A tool for monitoring container performance metrics.

<p align="center"> <img width="700" height="160" src="https://kubernetes.io/images/kubernetes-horizontal-color.png"> </p>

### ⚠️ MUST
```
Your Kubernetes-based application must include the following services:
- Poll service (Python/Flask)
- Worker service (Java)
- Result service (Node.js)
- Redis (v5.0)
- PostgreSQL (v12)
- Traefik for routing and load balancing
- cAdvisor for monitoring
- Implement Ingress rules with Traefik for routing traffic.
- Use PersistentVolumes for PostgreSQL data storage.
- Configure monitoring with cAdvisor.
- Ensure scalability for the Poll and Result services.
```

> [!NOTE]
> An infinite amount of bonuses are possible. Feel free to add as many features as you  want as long as the mandatory (must and should) features are completed.


## **⚙️ Technology Notes**

The application utilizes the following technologies:

    Container Orchestration: Kubernetes
    Languages: Python (Poll), Java (Worker), Node.js (Result)
    Monitoring: cAdvisor
    Load Balancer: Traefik
    Database: PostgreSQL
    Queue System: Redis

## **🙍‍♂️ Contributors:**
### **👨‍💻 Developer:**
- [🐟 Simon GANIER-LOMBARD](https://github.com/6im0n)
- [🦉 Aubane NOURRY](https://github.com/AubaneNourry)


## **🎮 How to Use:**

You can use the script in **scripting** folder to deploy the application on your Kubernetes cluster.
```bash
$ chmod +x apply-and-run.sh
$ ./apply-and-run.sh
```
You ahave also the possibility to clean the deployment using the following script:
```bash
$ chmod +x clean-cluster.sh
$ ./clean-cluster.sh
```
## **👐 Contribute:**

Feel free to explore the code, contribute, or provide feedback.
