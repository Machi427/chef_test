case node['platform_version'].to_i
when 6 then
  default[:ldap][:sizelimit] = '15'
  default[:ldap][:cacertdir] = '/etc/openldap/certs'
  default[:ldap][:dir] = '/etc/openldap/test2'
  default[:ldap][:path] = '/etc/openldap/ldap.conf'
when 5 then
  default[:ldap][:sizelimit] = '12'
  default[:ldap][:cacertdir] = '/etc/openldap/conf/certs'
  default[:ldap][:conf] = 'pam_ldap.conf'
  default[:ldap][:path] = '/etc/openldap/pam_ldap.conf'
end
  
