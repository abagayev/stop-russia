# Auto-deployment on remote Ubuntu VMs

This automation is based on the `compose` routine present in this project and automatize deploying it on multiple remote machines. Curren version supports auto-deployment only on Debian servers and were tested on *Ubuntu 20.04*. 

# Prerequisits

You need to setup **SSH key** for each remote machine you are planning to use for the deployment. Current version supports passing only a single SSH key. It which means that you have to add a specific SSH key to each remote machine.

## Hosts

Each remote machine scheduled for the deployment should be added to the **hosts.txt** file in a format *username@destination*. 
- *username* - Your credentials for loggin in to the remote server. It is assumed that this user has superuser privileges, e.g., a *root* user.
- *destination* - Address of your remote server. It can be a URL (e.g., *example.com*) or the IP address (e.g., 176.73.93.2).

## SSH Key

SSH key can be generated using a following command:

>ssh-keygen -t RSA -b 4096

You would be prompted to specify file name, select a custom one you like. For the convenience, you may leave passphrase empty. In this tutorial generated SSH key is stored in a file *vm-key* which is placed in a default location *~/.ssh*. 

Add SSH key to each of the remote VMs:

>ssh-copy-id -i ~/.ssh/vm-key *username@destination*


# Usage

### Main script

`deploy.sh` - main script that executes deployment on the machines specified in **hosts.txt** file. In current version parameters are shared across all remote servers. If you have multiple machines with different hardware characteristics it is recommended to group them accordingly and deploy those groups separately.

Parameters are defined in `deploy.sh` script. You would have to modify this file. 

Main parameters:

- KEY - path to the SSH key linked to the host VMs.
- CONTAINERS_PER_MACHINE - number of docker replicas per one remote server. The value is the same for all machines specified in *hosts.txt*.
- TARGETS_URL - URL of the text file that contains resources. Default value points to the https://raw.githubusercontent.com/abagayev/stop-russia/main/resources.txt

Additional parameters:

- HOSTS - path to the file with the host names.
- DEPLOYMENT_SCRIPT - path to the file with the deployment script. Current version supports only Ubuntu deployment. Script `deploy_ubuntu.sh` can be modified to cover other operating systems.

Usage:
> \>\$ chmod +x deploy.sh \
> \>\$ ./deploy.sh

**This script is sufficient for the project deployment on the host machines, the following section is purely informative.**

### Subroutine

Script `deploy_ubuntu.sh` fully prepares Ubuntu machine for spawning multiple docker containers with this project. It automatically downloads Git, Docker, and clones this repository.

Parameters:
- -n|--number - containers number
- -t|--targets-url - url with targets file
- -h|--help - display help

Usage example: 
>./compose.sh -n 10 -t https://raw.githubusercontent.com/abagayev/stop-russia/main/resources.txt