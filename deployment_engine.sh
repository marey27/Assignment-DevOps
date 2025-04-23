# Install Helm on your local machine:
curl https://get.helm.sh/helm-v3.9.0-linux-amd64.tar.gz -o helm-v3.9.0-linux-amd64.tar.gz
tar -zxvf helm-v3.9.0-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm

# Initialize Helm in your Kubernetes Cluster:
helm repo add stable https://charts.helm.sh/stable
helm repo update

# Install a sample app using Helm:
helm install my-nginx stable/nginx-ingress

# Install an Ingress Controller:
helm install nginx-ingress stable/nginx-ingress --set controller.replicaCount=2



