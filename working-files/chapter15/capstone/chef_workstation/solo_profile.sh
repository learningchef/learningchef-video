#!/bin/bash
set -o nounset

CHEFDK_TARGET_VERSION=1.1.16
CHEFDK_INSTALLED_VERSION=$(chef --version 2>/dev/null |awk '/Chef Development Kit Version:/ {print $NF}')
if [[ "${CHEFDK_INSTALLED_VERSION}" == "" ]]; then
  echo "Installing ChefDK ${CHEFDK_TARGET_VERSION}"
  curl --silent --show-error https://omnitruck.chef.io/install.sh | \
    sudo -E bash -s -- -c stable -P chefdk -v ${CHEFDK_TARGET_VERSION}
fi

eval "$(chef shell-init bash)"
echo "Downloading cookbook dependencies with Berkshelf"
berks vendor

echo "Running chef-client in local mode"
sudo chef-client --local-mode \
  --config-option cookbook_path="$(pwd)/berks-cookbooks" \
  --override-runlist chef_workstation \
  --profile-ruby

echo "Cleaning up"
sudo rm -rf nodes
sudo rm -rf berks-cookbooks
