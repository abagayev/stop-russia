# Google Cloud Platform (GCP) VM automation

Scripts to deploy `bombardier` Docker image to GCP.
You can control the number of instances and you can choose whether to attack all targets from the embedded `resources.txt` file, or supply a custom URL to target.

## How to use

Prerequisites:
- GCP account and a project capable of creating VMs (computing instances), [start trial](https://cloud.google.com/free).
- `gcloud` utility (see [how to install](https://cloud.google.com/sdk/docs/install))
- authenticate `gcloud` (run, `gcloud init`)

To deploy the image:
- Deploy one instance: `./automation/gcp-gcloud/deploy.sh`
- Deploy `n = 3` instances: `./automation/gcp-gcloud/deploy.sh -n 3`
- Deploy one instances to target interfax: `./automation/gcp-gcloud/deploy.sh -t https://interfax.ru`
- Deploy `n = 5` instances to target interfax: `./automation/gcp-gcloud/deploy.sh -n 5 -t https://interfax.ru`

In general, `-n COUNT` option controls the number of instances (default 1), and `-t TARGET` option, if supplied, will make the `bombardier` target that one url only (please, use full url, with `http://` or `https://`).

To clean up the VMs:
- `./automation/gcp-gcloud/clenup.sh`

This will only remove the VMs created by this script.

## How it works

GCP has an option to create a VM specifically for a single Docker container.
We do so with one command and we supply container options if needed.
We choose the smallest, cheapest `f1-micro` VM in `asia-northeast3-a` (Seoul) region (close to target).
Examine the scripts for yourself.
