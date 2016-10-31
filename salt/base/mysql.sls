mariadb-install:
  pkg.installed:
    - pkgs:
      - mariadb
      - mariadb-server
      - python2-PyMySQL
mariadb:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - pkg: mariadb-install
