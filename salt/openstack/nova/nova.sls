{% if grains['fqdn'] == 'linux-node1.com' %} 
nova-control-install:
  pkg.installed:
    - pkgs:
      - openstack-nova-api 
      - openstack-nova-cert
      - openstack-nova-conductor 
      - openstack-nova-console
      - openstack-nova-novncproxy 
      - openstack-nova-scheduler
{% else %}
nova-compute-install:
  pkg.installed:
    - pkgs:
      - openstack-nova-compute 
      - sysfsutils
{% endif %}
