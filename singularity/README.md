# Singularity VM Automated by Cloud-Init

# Procedures

## create multi-part user-data
```
python write-mime.py cloud.cfg:text/cloud-config install-singularity.sh:text/x-shellscript > user-data
```

## create new iso for cloud-init input
```
make
```

## start machine
```
vagrant up
```

# Cloud-Init Notes

Multi-part user data is created by python script `write-mime.py`. It is copied from `cloud-init` [documentation](http://cloudinit.readthedocs.io/en/latest/topics/format.html).

Multi-part user data will be saved on virtual machine under `/var/lib/cloud/instances/INSTANCE_ID/`. Its directory structure is described in `cloud-init` [documentation](http://cloudinit.readthedocs.io/en/latest/topics/format.html). `/var/lib/cloud` is the main directory containing cloud-init specific subdirectories. The `user-data` file in iso will be downloaded and copied to instance directory as `user-data.txt`. Its components will be extracted to appropriate sub-folders underneath the same path. The shell script section will be saved to `scripts` sub-folder and will be run by `users-script` module for example. `scripts-user` has been added to `/etc/cloud/cloud.cfg` in final stage.

More detailed `cloud-init` documentation can be found at (https://cloudinit.readthedocs.io/en/latest/). There are several `scripts` related topics describing the scripts selection in `cloud-init` final stage.
