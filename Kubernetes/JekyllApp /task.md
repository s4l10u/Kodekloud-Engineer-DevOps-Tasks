The Nautilus development team had a discussion with the DevOps team and they want to deploy a Jekyll app on Kubernetes cluster. They have already shared details with the DevOps team, please find more details below:


Create a namespace jekyll-namespace-datacenter for jekyll.

PersistentVolume is already created on jump_host.

Create a PersistentVolumeClaim which should be named jekyll-site-datacenter under the same namespace. accessModes should be ReadWriteMany, request 1Gi storage.

Create a pod named jekyll-pod-datacenter for jekyll. Init container should be named as jekyll-init-datacenter, image should be kodekloud/jekyll, use command as [ "jekyll", "new", "/site" ]. Its image pull policy should be IfNotPresent, volumeMount name should be site and its mountPath should be /site. The main container should be named as jekyll-container-datacenter, its image should be kodekloud/jekyll-serve, volumeMount name should be site and its mountPath should be /site. Volume name should be site and persistent volume claim's claim name should be jekyll-site-datacenter

Create a service for jekyll which should be named jekyll-service-datacenter under the same namespace. Port should be 8080, protocol should be TCP, its targetPort should be 4000 and nodePort should be 31181. Its type should be NodePort and loadbalancer status should be {}.

You can use any labels as per your choice.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster.