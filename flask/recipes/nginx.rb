Chef::Log.info("******Installing nginx.******")

execute "Install epel-release" do
    command "sudo yum -y install epel-release"
    action :run
end

execute "Install nginx" do
    command "sudo yum -y install nginx"
    action :run
end

Chef::Log.info("******Starting nginx.******")

execute "Install nginx" do
    command "sudo /etc/init.d/nginx start"
    action :run
end
