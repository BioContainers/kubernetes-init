# Variables to be set:
#
# PUBLIC_KEY
# PRIVATE_KEY
# TF_VAR_kube_api_pwd
                    

# Deployment name
export NAME="bioconatiner-ci-system"
export PORTAL_DEPLOYMENT_REFERENCE="biocontainers-ci"

# Paths to public and private keys for the deployment
#export PUBLIC_KEY=""
#export PRIVATE_KEY=""

# Vars for the operation of the deployment
export PORTAL_DEPLOYMENTS_ROOT="$PWD/deployments"
export PORTAL_APP_REPO_FOLDER="$PWD"

deployment_dir="$PORTAL_DEPLOYMENTS_ROOT/$PORTAL_DEPLOYMENT_REFERENCE"
if [[ ! -d "$deployment_dir" ]]; then
    mkdir -p "$deployment_dir"
fi
printf 'Using deployment directory "%s"\n' "$deployment_dir"

# Vars passed to terraform

# export TF_VAR_kube_api_pwd=$K8S_API_PASSWD
export TF_VAR_cluster_name=$NAME
export TF_VAR_public_key_path=$PUBLIC_KEY

# OpenStack specific settings and flavours

export TF_VAR_network_name="BioContainers_private"
export TF_VAR_floatingip_pool="ext-net"
# 
export TF_VAR_flavor_k8s_node="6a36101a-21c7-4b97-ac4d-9343fe784028" 
export TF_VAR_flavor_k8s_master="6a36101a-21c7-4b97-ac4d-9343fe784028"
# export TF_VAR_flavor_gfs_node="6a36101a-21c7-4b97-ac4d-9343fe784028"


## OS images for k8s and glusterfs
# This images must be currently there

export TF_VAR_image="Ubuntu16.04"
export TF_VAR_ssh_user="ubuntu"

export TF_VAR_image_gfs="Ubuntu16.04"
export TF_VAR_ssh_user_gfs="ubuntu"


## Cluster layout (how many masters, how many nodes, etc).

export TF_VAR_number_of_etcd="0"
export TF_VAR_number_of_k8s_masters="1"
export TF_VAR_number_of_k8s_masters_no_floating_ip="2"
export TF_VAR_number_of_k8s_masters_no_etcd="0"
export TF_VAR_number_of_k8s_masters_no_floating_ip_no_etcd="0"
export TF_VAR_number_of_k8s_nodes_no_floating_ip="1"
export TF_VAR_number_of_k8s_nodes="0"

# export TF_VAR_number_of_gfs_nodes_no_floating_ip="3"
# export TF_VAR_gfs_volume_size_in_gb="180"


# Variables for ansible

export KUBELET_DEPLOYMENT_TYPE="host"
export KUBE_VERSION="v1.8.2"

ostack/deploy.sh
