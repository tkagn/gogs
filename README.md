# gogs

## Clone Repo

## Generate project/namespace

```bash
oc new-project gogs
```

## Build GoGs app

```bash
oc new-project gogs
oc create sa gogs-sa
oc adm policy add-scc-to-user anyuid -z gogs-sa
oc new-build --name gogs https://github.com/tkagn/gogs
oc start-build gogs

oc new-app gogs 
oc patch dc/minimal-notebook --patch '{"spec":{"template":{"spec":{"serviceAccountName": "gogs-sa"}}}}'
```
