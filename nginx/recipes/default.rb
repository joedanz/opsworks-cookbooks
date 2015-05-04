Chef::Log.info("******Installing nginx dependencies.******")

execute "Install epel-release" do
    command "sudo yum -y install epel-release"
    action :run
end

Chef::Log.info("******Installing nginx.******")

execute "Install nginx" do
    command "sudo yum -y install nginx"
    action :run
end

Chef::Log.info("******Installing nginx conf file.******")

cookbook_file "/etc/nginx/nginx.conf" do
  source "nginx.conf"
  mode 0644
  action :create
end

Chef::Log.info("******Starting nginx.******")

execute "Install nginx" do
    command "sudo /etc/init.d/nginx start"
    action :run
end
