#!/bin/bash
date +%s
kubectl delete -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml
kubectl delete -f samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml
