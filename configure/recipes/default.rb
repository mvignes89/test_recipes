node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'nodejs'
    Chef::Log.debug("Skipping deploy::nodejs application #{application} as it is not a node.js app")
    next
  end
 
template "/usr/local/bin/test-script.sh" do
    source 'script.sh.erb'
    mode '0755'
    owner 'root'
    group 'root'
 end

  template "/etc/init/test-server.conf" do
    source 'server.conf.erb'
    mode '0744'
    owner 'root'
    group 'root'
  end