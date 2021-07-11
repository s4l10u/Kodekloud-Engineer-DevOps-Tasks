The Nautilus DevOps team is working to deploy some tools in Kubernetes cluster. Some of the tools are licence based so that licence information needs to be stored securely within Kubernetes cluster. Therefore, the team wants to utilize Kubernetes secrets to store those secrets. Below you can find more details about the requirements:


We already have a secret key file media.txt under /opt location on jump host. Create a secret named as media and it should contain the password/license-number present in media.txt file.

Also create a pod named secret-nautilus.

Configure pod's spec as container name should be secret-container-nautilus, image should be ubuntu preferably with latest tag (remember to mention the tag with image). Use command '/bin/bash', '-c' and 'sleep 10000' for container. Consume the created secret in a volume named secret-volume-nautilus . The mount path should be /opt/games and mode should be readOnly.

To verify you can exec into the container secret-container-nautilus, to check the secret key under the mounted path /opt/games.

Secret type should be generic.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.