#!/bin/bash
set -e

echo "Rolling back deployment..."
# Rollback logic here

echo "Rolling back Kubernetes deployment..."
kubectl rollout undo deployment/my-app-deployment

echo "Waiting for rollout to stabilize..."
kubectl rollout status deployment/my-app-deployment

echo "Waiting for rollout to stabilize..."
kubectl rollout status deployment/my-app-deployment

echo "Rollback completed successfully."
