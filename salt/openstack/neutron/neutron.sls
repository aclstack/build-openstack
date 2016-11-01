{% if grains['fqdn'] == 'linux-node1.com' %}
nova-control-install:
  pkg.installed:
    - pkgs:
      - openstack-neutron 
      - openstack-neutron-ml2
      - openstack-neutron-linuxbridge 
      - ebtables 
{% else %}
nova-compute-install:
  pkg.installed:
    - pkgs:
      - openstack-neutron 
      - openstack-neutron-linuxbridge 
      - ebtables 
{% endif %}
