#! /usr/bin/env bash

set -euxo pipefail

cat main.tf.template > main.tf
terraform destroy -auto-approve
rm main.tf
rm terraform.tfstate*

echo "Cleanup done!"