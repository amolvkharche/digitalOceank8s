This repo is to create Kubernetes cluster on Digital Ocean.

Create your own terraform.tfvars and add your token from Digital Ocean(API-> Tokens->Generate New Token).
 
  amol@jumpsrv:~# cat terraform.tfvars
  do_token = "blablablahhhhhhhhhhhhh"
  amol@jumpsrv:~#
Initialize directory with terraform.
  terraform init
  terraform plan
  terraform apply

Once terraform successfully applied you will see the message below
  Outputs:
  kubeconfig_path_do = "./kubeconfig"

![image](https://github.com/amolvkharche/digitalOceank8s/assets/83961171/18e0bcd9-a391-4980-9734-06876f52796c)

This is your kubecofig file to access your Digital Ocean K8s cluster.
   export KUBECONFIG=$PWD/kubeconfig

--------------- Thanks --------------------------------
