Chef::Log.info("******Installing nginx.******")

execute "Install epel-release" do
    command "sudo yum install epel-release"
    action :run
end

execute "Install nginx" do
    command "sudo yum install nginx"
    action :run
end

Chef::Log.info("******Start nginx.******")

execute "Install nginx" do
    command "sudo /etc/init.d/nginx start"
    action :run
end
