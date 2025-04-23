
Terraform AWS Infrastructure Summary
====================================

This project provisions an AWS infrastructure using Terraform, which includes:

1. VPC:
   - A custom Virtual Private Cloud with user-defined CIDR.

2. Public and Private Subnets:
   - Separate subnets for public and private resources.

3. Internet Gateway and NAT Gateway:
   - The public subnet connects to the internet via an Internet Gateway.
   - The private subnet routes internet-bound traffic through a NAT Gateway for security.

4. Routing:
   - Custom route tables are created to manage traffic between subnets and to/from the internet.

5. Elastic IP:
   - Used for the NAT Gateway to provide a fixed public IP.

6. Outputs:
   - Terraform outputs include subnet IDs, NAT Gateway ID, and Elastic IP for reference.

7. EKS Cluster:
   - An Amazon EKS cluster is deployed inside this network for Kubernetes-based workloads.

8. Terraform Variables:
   - The setup is flexible and uses variables for region, VPC CIDR, subnet CIDRs, and tags.

9. Helm (Deployment Engine):
   - Helm is installed and configured on the cluster as the deployment engine.
   - It simplifies deploying applications and infrastructure in Kubernetes.

10. Metrics Stack (Prometheus & Grafana):
    - Installed using Helm.
    - Prometheus scrapes and stores metrics.
    - Grafana provides dashboards for visualization.
    - Configuration includes setting up services, persistent volumes, and accessing the Grafana dashboard.
