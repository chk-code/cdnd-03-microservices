# Deployment script for K8s cluster

# ConfigMaps for environment variables (not on GitHub)
kubectl apply -f  ./_yaml/env_aws-deployment.yaml
kubectl apply -f  ./_yaml/env_data-deployment.yaml
kubectl apply -f  ./_yaml/env_dbpw-deployment.yaml
# API: feed
kubectl apply -f ./_yaml/api-feed-deployment.yaml
kubectl apply -f ./_yaml/api-feed-service.yaml
# API: user
kubectl apply -f ./_yaml/api-user-deployment.yaml
kubectl apply -f ./_yaml/api-user-service.yaml
# frontend
kubectl apply -f ./_yaml/fe-deployment.yaml
kubectl apply -f ./_yaml/fe-service.yaml
# Reverse Proxy
kubectl apply -f ./_yaml/rp-deployment.yaml
kubectl apply -f ./_yaml/rp-service.yaml
