# Grafana server packer

packer for grafana images for AWS and other cloud providers

This repository is based on a centos image, is known to run ok with the ami

```
ami-9887c6e7
```

Amis produced with this repository will contain

```
nginx
grafana
```

Also firewall rules for

```
http
https
ssh
```

and ```grafana-server``` service will be enabled to run when the VM starts

## Ports that should be exposed when creating an instance of this ami

```
3000
```