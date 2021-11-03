# gogs

## Clone Repo

## Generate project/namespace

```bash
oc new-project gogs
```

## Build GoGs app

```bash
oc new-build --name gogs --binary --strategy docker
oc start-build gogs --from-dir ./
oc new-app gogs 
oc adm policy add-scc-to-user anyuid -z gogs-sa
```