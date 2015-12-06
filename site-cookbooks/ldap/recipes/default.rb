#
# Cookbook Name:: ldap
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "openldap-clients" do
  action :install
end

directory node[:ldap][:dir] do
  owner "root"
  group "root"
  recursive true
  mode 0755
  action :create
end

template "ldap.conf" do
  path node[:ldap][:path]
  source "ldap.conf.erb"
  owner "root"
  group "root"
  mode 0644
end

