The Nautilus DevOps team is working on a Kubernetes template to deploy a web application on the cluster. There are some requirements to create/use persistent volumes to store the application code, and the template needs to be designed accordingly. Please find more details below:


We already created a directory /mnt/sysops and a file index.html under the same on node01 (you need not to access node01), that location should be mounted within the container to web server's document root (keep in mind doc root can be different for Apache and Nginx web servers).

Create a PersistentVolume named as pv-devops. Configure the spec as storage class should be manual, set capacity to 7Gi, set access mode to ReadWriteOnce , volume type should be hostPath and set path to /mnt/sysops.

Create a PersistentVolumeClaim named as pvc-devops. Configure the spec as storage class should be manual, set request storage to 3Gi, set access mode to ReadWriteOnce.

Create a pod named as pod-devops, set volume as storage-devops, and persistent volume claim to be named as pvc-devops. Container name should be container-devops, use image nginx with latest tag only and remember to mention tag i.e nginx:latest , container port should be default port 80, mount the volume to mount path to default doc root of web server and should be named storage-devops.

You can check your static website, exec into the pod and use curl command, i.e curl http://localhost.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.


