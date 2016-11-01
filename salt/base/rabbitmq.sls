rabbitmq-server-install:
  pkg.installed:
    - pkgs:
      - rabbitmq-server
rabbitmq-server:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - pkg: rabbitmq-server-install
