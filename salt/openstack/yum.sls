add-openstack-repo:
  pkg.installed:
    - names: 
      - epel-release
      - centos-release-openstack-mitaka
      - python-openstackclient
      - openstack-selinux
