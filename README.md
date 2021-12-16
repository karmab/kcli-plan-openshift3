A collection of plan to deploy openshift3

- `kcli_plan.yml` Deploys openshift on a variable number of control plane, workers and infra nodes. Downstream or Upstream
- `kcli_plan_origin.yml` Deploys a single vm with oc cluster up
- `kcli_plan_downstream.yml` Same as the origin one, but using a rhel box
- `kcli_plan_minishift.yml` Deploys minishift

# Configuration

For the main plan, you'll need to set your rhn credentials in ~/.kcli/config.yml. Here's a snippet of the corresponding conf

```
default:
 rhnuser: xxx
 rhnpassword: yyy
```

# Launching

```
kcli create plan
```

Parameters can be customized using `-P param=value` repeatedly

# Parameters

The main plan uses the following parameters


|Parameter          |Default Value                |
|-------------------|-----------------------------|
|asb                |True                         |
|base_disk_size     |60                           |
|crio               |False                        |
|deploy             |True                         |
|domain             |default                      |
|glusterfs          |False                        |
|glusterfs_disk     |vdb                          |
|glusterfs_disk_size|60                           |
|image              |rhel7                        |
|infra_memory       |4096                         |
|infras             |1                            |
|master_memory      |8144                         |
|masters            |1                            |
|node_memory        |4096                         |
|nodes              |1                            |
|metrics            |False                        |
|notifycmd          |tail -10 /var/log/ansible.log|
|pool               |default                      |
|registry           |registry.redhat.io           |
|version            |3.11                         |
