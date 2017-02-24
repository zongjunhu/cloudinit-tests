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
