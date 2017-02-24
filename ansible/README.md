# Slurm Cluster Automated by Ansible

## Check vm list and status
```
vagrant status
```
## Start Cluster
```
vagrant master c01 c02 c03
```
or bring up virtual machines one by one.
```
vagrant up master
...
vagrant up c03
```

## Provision virtual machine
```
vagrant up master
...
vagrant up c03
```

## Login virtual machine
```
vagrant ssh master
```
`master` is the head node of the cluster. There is a test user account called `testuser`. 
```
sudo su - testuser
```
Its home directory, `/shared/testuser`, is exported from master to all compute nodes through nfs. 
