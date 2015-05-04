Chef::Log.info("******Installing Virtualenv.******")

execute "Install Virtualenv" do
    command "pip install virtualenv"
    action :run
end

Chef::Log.info("******Creating Virtualenv.******")

execute "Create Virtualenv" do
    cwd '/home/ec2-user/search'
    command "virtualenv env"
    action :run
end
