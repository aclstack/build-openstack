keystone-install:
  pkg.installed:
    - pkgs:
      - openstack-keystone 
      - httpd 
      - mod_wsgi 
      - memcached 
      - python-memcached
