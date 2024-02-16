#!/bin/bash

# Check if kind is installed
if ! command -v kind &> /dev/null
then
    echo "kind is not installed. Installing..."
    brew install kind
fi

# Define cluster name
CLUSTER_NAME="hussein-kind-cluster"

# Create kind cluster
if kind create cluster -n $CLUSTER_NAME
then
    # Define directory to save kubeconfig file
    SAVED_KUBECONFIG_DIR="config/"
    mkdir -p $SAVED_KUBECONFIG_DIR

    # Define path to kubeconfig file
    SAVED_KUBECONFIG_PATH="$SAVED_KUBECONFIG_DIR/kubeconfig"

    # Save kubeconfig to file
    kind get kubeconfig -n $CLUSTER_NAME > $SAVED_KUBECONFIG_PATH
else
    echo "Failed to deploy kind cluster."
fi