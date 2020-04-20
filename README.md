# go-chat-k8s

Cloud infrastructure for <a href="https://github.com/leartgjoni/go-chat-api">go-chat</a>. <br/>
Build with Terraform and Helm. <br/>

#### Terraform
- Provisions an EKS cluster in AWS
  - 2 worker groups
    - group1: 2 t2.small nodes
    - group2: 1 t2.medium node

#### Helm
- chart for <a href="https://github.com/leartgjoni/go-chat-app">app</a>
- chart for <a href="https://github.com/leartgjoni/go-chat-api">api</a>
- chart for redis
- nginx-ingress

#### How to deploy
```
make deploy
```
- terraform prompts the resources that will be created. Requires user approval.

#### How to destroy
```
make destroy
```
