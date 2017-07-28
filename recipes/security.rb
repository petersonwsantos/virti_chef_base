selinux_state "SELinux Permissive" do
  action :disabled
end


#case node['os']
#when 'linux'
#  case node['platform_family']
#  when 'redhat'
#    selinux_state "SELinux Permissive" do
#      action node['virti_chef_base']['security']['selinux']['action'].to_sym
#    end
#  else
#    return
#  end
#when 'windows'
#  return
#else
#  return
#end

