add-openstack-repo
  cmd.run:
    -name: rpm -ivh http://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
  pkg.installed:
    -name: centos-release-openstack-mitaka
