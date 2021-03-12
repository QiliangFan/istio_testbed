#!/bin/bash
date +%s
kubectl delete -f samples/bookinfo/platform/kube/bookinfo.yaml -l app=reviews,version=v3
kubectl delete -f samples/bookinfo/platform/kube/bookinfo.yaml -l app=reviews,version=v2
kubectl delete -f samples/bookinfo/platform/kube/bookinfo.yaml -l app=reviews,version=v1
kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml -l app=reviews,version=v2
kubectl delete -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml
kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml
