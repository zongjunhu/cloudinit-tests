# Ansible Samples

Here are a few examples used in cloud-init testing. 

* `hosts` is list of test hosts managed by `ansible`. 
* `pb.yml` is a simple ansible playbook to install and start httpd service in CentOS

To run this example in CentOS virtual machine, run the followings as root.

```bash
$ ssh-keygen
$ cat .ssh/id_rsa.pub >> .ssh/authorized_keys
$ ssh localhost
$ ansible-playbook -i hosts pb.yml
```
