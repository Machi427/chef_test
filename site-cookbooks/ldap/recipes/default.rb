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

#template "ldap.conf" do
#  path node[:ldap][:path]
#  source "ldap.conf.erb"
#  owner "root"
#  group "root"
#  mode 0644
#end

template "ldap.conf" do
  path  node['system-base']['ldap']['path']
  source "ldap.conf.erb"
  owner "root"
  group "root"
  mode 0644
  variables  :ldap_descriptions => node['system-base']['ldap']['descriptions'] ,
             :ldap_descriptions_option => node['system-base']['ldap']['descriptions_option'] ,
             :ldap_descriptions_host => node['system-base']['ldap']['descriptions_host'] , 
             :ldap_descriptions_arr => node['system-base']['ldap']['descriptions_arr']
end

