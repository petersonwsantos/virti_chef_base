# Selinux
default['virti_chef_base']['security']['selinux']['configure'] = true
default['virti_chef_base']['security']['selinux']['action'] = 'disabled' 
#default['virti_chef_base']['security']['selinux']['action'] = 'enforcing' 

# Debug
message_list = [
  '',
  '** Security **',
  "Configure Selinux           (#{node['virti_chef_base']['security']['selinux']['configure']})",
  "Configure Selinux Action    (#{node['virti_chef_base']['security']['selinux']['action']})"
]
message_list.each do |message|
  Chef::Log.warn(message)
end

