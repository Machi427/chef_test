#
# Cookbook Name:: log
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if platform_family?('rhel') && node['platform_version'].to_i == 5 then
  log "this is rhel 5"
elsif platform_family?('rhel') && node['platform_version'].to_i == 6 then
  log "this is rhel 6"
end
