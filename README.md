# Sample app dockerized and deployed to K8s

## Overview

The sample app was gotten from [realworld-htmx](https://github.com/hesxenon/realworld-htmx) and is a simple app that uses the BASH stack (Bun + Andale + Sqlite + Htmx).


## Docker
The sample app is dockerized by using oven/bun:latest official Docker image. The Dockerfile is in the root of the project.

The docker image was pushed to Docker Hub. You can pull the image by running the following command:

```bash
docker pull gassanquintar/bun-app:latest
```

*Note: You need to have Docker installed on your machine. If you don't have Docker installed, you can follow the instructions [here](https://docs.docker.com/get-docker/).*



## Kubernetes
The app is deployed to a k8s cluster using the following resources:
- Deployment (deployment.yaml)
- Service (service.yaml)

## Running the app
You can run the app locally by running minikube and deploying the app to the minikube cluster. The following commands can be used to deploy the app to minikube:

*Note: You need to have minikube installed on your machine. If you don't have minikube installed, you can follow the instructions [here](https://minikube.sigs.k8s.io/docs/start/).*

```bash
# Start minikube
minikube start
```

```bash
# Run the dashboard (optional)
## This command will open the k8s dashboard in your default browser
minikube dashboard
```

```bash
# Check the status of the minikube cluster
minikube status
```

```bash
# Deploy the app to the minikube cluster
kubectl apply -f deployment.yaml
```
    
```bash
# Check the status of the deployment
kubectl get deployments
```

```bash
# Check the status of the pods
kubectl get pods
```

```bash
# Create a service
kubectl apply -f service.yaml
```

```bash
# Check the status of the service
kubectl get services
```

```bash
# Get access to the service
minikube service bun-app-service
```
This opens up a browser window that serves your app and shows the app's response.

## Cleaning up
You can clean up the resources created by running the following commands:

```bash
# Delete the service
kubectl delete service bun-app-service
```

```bash
# Delete the deployment
kubectl delete deployment bun-app-deployment
```

```bash
# Stop minikube
minikube stop
```

```bash
# Delete minikube
minikube delete
```
