To create the environment use: `scripts/env_setup.sh`

<br/>

To run the ansible playbook completely: `ansible-playbook main.yaml` 

To run the ansible book components use `--tags` and refer to following tags-component mapping

|   Tags             |    Components                                                                                                                  |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------|
| check_requirements | Check required installations                                                                                                   |
| eks_setup          | Creates EKS Control Plane, Nodegroup and configure kubectl                                                                     |
| cluster_deploy     | Creates EKS Control Plane and configure kubectl                                                                                |
| node_deploy        | Create Nodegroup                                                                                                               |
| ingress_controller | Make IAM Configurations and Deploy Ingress controller                                                                          |
| ingress_iam        | Make IAM Configurations for Ingress Controller                                                                                 |
| ingress_deployment | Deploy Ingress controller                                                                                                      |
| tutor              | Run all tutor deployment steps and configure dns entries                                                                       |
| tutor_config       | Save configurations for tutor                                                                                                  |
| tutor_pre          | Create all services without starting platform                                                                                  |
| dns_config         | Annotate ingress controller to create ALB and make Route53 entry                                                               |
| tutor_post         | Initialize platform                                                                                                            |

<br/>

---
**NOTE**

It is assumed that a Route53 hosted zone has been created which will be used as nameserver for your domain.

---