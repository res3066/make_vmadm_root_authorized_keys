Role Name
=========

rs-make-vmadm-root-authorized-keys

Makes a variable (to be imported and passed in to the vmadm role as customer_metadata.root_authorized_keys) out of a directory full of multiple username.pub files

Requirements
------------


Role Variables
--------------

Expects a standard ClueTrust style play environment with:

```yaml
host_specific_files: "{{ inventory_dir }}/host_files/{{ inventory_hostname }}"
host_root_ssh_keys: "{{ host_specific_files }}/root_ssh_keys"
```
in {{ inventory_dir }}/group_vars/all.yml (or some other appropriate location)

You'll have a bunch of files in there like so:

```yaml
[root@ansible ~/tmp/exampleplay]# ls -l host_files/my.example.com/root_ssh_keys/
total 20
-rw-r--r-- 1 root root 411 Feb 25 02:10 gaige.pub
-rw-r--r-- 1 root root 848 Feb 25 02:10 root_authorized_keys.yml
-rw-r--r-- 1 root root 409 Feb 25 02:10 rs.pub
[root@ansible ~/tmp/exampleplay]# 
```

Provides {{ host_specific_files }}/root_ssh_keys/root_authorized_keys.yml which defines a variable (coincidentally called "root_authorized_keys") which can then get passed in to the vmadm role.



Dependencie
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - rs-make-vmadm-root-authorized-keys
```

License
-------

MIT

Author Information
------------------

rs@cluetrust.com
https://technotes.seastrom.com


