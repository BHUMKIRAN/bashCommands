# Kubernetes Commands

Kubernetes manages containerized apps across pods, services, deployments, and clusters. For local hosting, use `kubectl port-forward`, `NodePort`, or a local cluster like Minikube or Kind.

## Definitions

- Cluster - Group of machines where Kubernetes runs workloads.
- Node - Machine inside the cluster.
- Pod - Smallest deployable unit, usually one app container.
- Deployment - Manages pod replicas and rolling updates.
- Service - Stable network endpoint for pods.
- ConfigMap - Non-secret configuration data.
- Secret - Sensitive configuration data.
- Namespace - Logical group for Kubernetes resources.
- Ingress - HTTP routing from outside the cluster to services.

## Cluster Check

```bash
kubectl version --client
kubectl cluster-info
kubectl get nodes
kubectl get namespaces
kubectl config current-context
kubectl config get-contexts
```

## Create Deployment

```bash
kubectl create deployment nginx-app --image=nginx
kubectl get deployments
kubectl get pods
kubectl describe deployment nginx-app
```

## Localhost with Port Forward

Forward local port `8080` to the deployment's port `80`.

```bash
kubectl port-forward deployment/nginx-app 8080:80
curl http://localhost:8080
```

Forward a service:

```bash
kubectl expose deployment nginx-app --type=ClusterIP --port=80 --target-port=80
kubectl port-forward service/nginx-app 8080:80
curl http://localhost:8080
```

## Expose with NodePort

```bash
kubectl expose deployment nginx-app --type=NodePort --port=80 --target-port=80
kubectl get service nginx-app
```

With Minikube:

```bash
minikube service nginx-app
minikube service nginx-app --url
```

## Local Cluster Commands

Minikube:

```bash
minikube start
minikube status
minikube dashboard
minikube stop
```

Kind:

```bash
kind create cluster --name local-dev
kind get clusters
kind delete cluster --name local-dev
```

## Apply YAML Files

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get all
kubectl delete -f deployment.yaml
```

## Scale and Update

```bash
kubectl scale deployment nginx-app --replicas=3
kubectl set image deployment/nginx-app nginx=nginx:stable
kubectl rollout status deployment/nginx-app
kubectl rollout history deployment/nginx-app
kubectl rollout undo deployment/nginx-app
```

## Logs and Shell

```bash
kubectl logs deployment/nginx-app
kubectl logs -f deployment/nginx-app
kubectl exec -it deployment/nginx-app -- sh
kubectl describe pod POD_NAME
```

## Config and Secrets

```bash
kubectl create configmap app-config --from-literal=APP_ENV=local
kubectl create secret generic app-secret --from-literal=API_KEY=secret-value
kubectl get configmaps
kubectl get secrets
```

## Cleanup

```bash
kubectl delete service nginx-app
kubectl delete deployment nginx-app
kubectl delete pod POD_NAME
```

## Localhost Checklist

- Create or apply the deployment.
- Expose it as a service.
- Use `kubectl port-forward service/SERVICE_NAME 8080:80`.
- Open `http://localhost:8080`.
- Use `Ctrl+C` to stop the port-forward session.
