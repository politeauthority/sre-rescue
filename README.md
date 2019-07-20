_NOT FOR PRODUCTION USE!!_
# SRE Rescue
This is the swiss army knife that embeds you into a k8s cluster with everything you need to survive.
The helm chart for SRE Rescue pod will spin up a k8s `deployment` in the cluster and namespace defined with a handful of tools for debugging connections between cluster members, as well as provide commonly needed CLI tools that are helpful while embeded with a cluster.

## Install
#### TLDR
```
helm upgrade --install sre-rescue-pod .tools/sre-rescue -f .tools/sre-rescue-pod/values.yaml
```
| Paramater        | Description           | Default  |
| ------------- |:-------------:| -----:|
| image.repository | container image repository      | _none_ |
| image.tag | container image tag      | _none_ |
| global.slackCliToken | container image tag      | _none_ |
# Image Details
SRE Rescue is currently built ontop of `alpine:3.10`. The following packages are garunteed to be available in this image.
### Tools Within
- gcc
- bash
- curl
- wget
- postgresql-client
- jq
- screen
- git
- python3
- py-pip
- openssh-client
- vim
