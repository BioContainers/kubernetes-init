# Setup a Kubernetes cluster on Openstack with Kubespray

## Requirements

- Ansible v2.4.1
- Terraform 0.9.x
- Your openstack RC file for auth

## Create a private and public key

You need to create an ssh private/public key set (or use an existing one). This will be used for the deployment process by terraform and ansible. 

## Download Kubespray

First get kubespray release version:

```
bash get_kubespray.sh
```

## Setup variables

Copy the `new-w1.sh` to a file name of your preference, `my-deploy.sh`. In that file set the different variables as explained inside.

## Set session

You need to configure the session where the terraform and ansible parts will be executed by Kubespray.

```
source <your-openstack-rc-file.rc>
```

Then enter your openstack password when prompted (corresponding to the user in that RC file).

## Run the deployment

Simple do `bash my-deploy.sh`, which will start the deployment. This is using [Kubespray](https://github.com/kubernetes-incubator/kubespray), which has a channel inside the [Kubernetes slack](http://slack.k8s.io/).

