Role Name
=========

rs-make-vmadm-root-authorized-keys

Makes a variable (to be imported and passed in to the vmadm role as customer_metadata.root_authorized_keys) out of a directory full of multiple username.pub files

Requirements
------------


Role Variables
--------------

Expects a standard ClueTrust style play environment with:

host_specific_files: "{{ inventory_dir }}/host_files/{{ inventory_hostname }}"

host_root_ssh_keys: "{{ host_specific_files }}/root_ssh_keys"

in {{ inventory_dir }}/group_vars/all.yml (or some other appropriate location)

Provides {{ host_specific_files }}/root_ssh_keys/root_authorized_keys.yml which defines a variable (coincidentally called "root_authorized_keys") which can then get passed in to the vmadm role.



Dependencie
------------

none

Example Playbook
----------------


    - hosts: servers
      roles:
         - rs-make-vmadm-root-authorized-keys

License
-------

BSD

Author Information
------------------

rs@seastrom.com

