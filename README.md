# Ansible adam

## Notes


Ansible all variables
```
- name: Print all available facts
  ansible.builtin.debug:
    var: ansible_facts
```

Display distribution
```
- name: Print some debug information 
  vars: 
    msg: |
        Ansible Distribution: {{ ansible_distribution }}
        Ansible Dist version: {{ ansible_distribution_version }}
        Ansible Dist family: {{ ansible_os_family }}
#         Gateway IP: {{ ansible_facts['default_ipv4']['gateway'] }}
  debug: 
    msg: "{{ msg.split('\n') }}"       
  tags: debug_info
``