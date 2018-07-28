# Jupyter + Singularity

Simple example environment that supports running Singularity in Jupyter


## Docker

```
sudo docker run -it --privileged craigwillis/jupyter-singularity bash
$ singularity --debug run shub://GodloveD/lolcow
```


## Z2JH
```
sudo helm install jupyterhub/jupyterhub --version=v0.6 --name=test --namespace=test -f config.yaml
```

Start server, open terminal

```
$ singularity --debug run shub://GodloveD/lolcow
```
