#!/bin/sh

echo "Installing Default minishift addons with hyperkit driver"

minishift addons install --defaults
minishift addons enable admin-user
minishift start --vm-driver=hyperkit
oc adm policy --as system:admin add-cluster-role-to-user cluster-admin developer
minishift console
