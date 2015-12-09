##########################################################
# For systembase::ldap
###########################################################

default['system-base']['ldap']['timelimit'] = 120
default['system-base']['ldap']['bind_timelimit'] = 120
default['system-base']['ldap']['idle_timelimit'] = 3600
default['system-base']['ldap']['objectclass'] = '(objectClass=posixaccount)'
default['system-base']['ldap']['server'] = '192.168.10.49'

case node['platform_version'].to_i
when 6 then
  default['system-base']['ldap']['path'] = '/etc/pam_ldap.conf'
  default['system-base']['ldap']['no_supplemental'] = 'nss_initgroups_ignoreusers root,ldap,named,avahi,haldaemon,dbus,radvd,tomcat,radiusd,news,mailman,apache,nagios,postfix,ntp,zabbix'
  default['system-base']['ldap']['descriptions'] = [ 'INFRA', node['system-base']['ldap']['descriptions_option'] ]
  default['system-base']['ldap']['descriptions_option'] = [ '' ] 
#  default['system-base']['ldap']['descriptions_arr'] = Array.new( node['system-base']['ldap']['descriptions'] ) 
when 5 then
  default['system-base']['ldap']['path'] = '/etc/ldap.conf'
  default['system-base']['ldap']['no_supplemental'] = 'nss_initgroups_ignoreusers root,ldap,named,avahi,haldaemon,dbus,radvd,tomcat,radiusd,news,mailman,apache,nagios,ntp,postfix'
  default['system-base']['ldap']['descriptions'] = [ 'INFRA', 'LC-LOGIN' ]
  default['system-base']['ldap']['descriptions_option'] = [ 'NJB-LV2', 'COMEDICAL-LV2', 'SF-LV2', 'KJ-LV2', 'NJ-LV2', 'SK-LV2', 'CM-LV2', 'AK-LV2', 'CT-LV2', 'NSC-LV2', 'PN-LV2', 'NG-LV2', 'KG-LV2', 'TK-LV2', 'CY-LV2', 'EI-LV2', 'BIZ-STG' ]
  default['system-base']['ldap']['descriptions_host'] = ( "(host=" +  node['hostname'] +")"  )
end
