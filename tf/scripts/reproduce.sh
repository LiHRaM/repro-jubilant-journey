#! /usr/bin/env bash

set -euxo pipefail

terraform init -upgrade

cat main.tf.template > main.tf

terraform apply -auto-approve

echo "" > main.tf

terraform apply -auto-approve
