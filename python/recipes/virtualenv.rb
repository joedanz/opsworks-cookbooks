Chef::Log.info("******Installing Virtualenv.******")

execute "Install Virtualenv" do
    command "pip install virtualenv"
    action :run
end

Chef::Log.info("******Creating ElasticSearch Virtualenv.******")

execute "Create Virtualenv" do
    cwd '/home/ec2-user/search'
    command "virtualenv env"
    action :run
end

Chef::Log.info("******Creating BPM Virtualenv.******")

execute "Create Virtualenv" do
    cwd '/home/ec2-user/bpm'
    command "virtualenv env"
    action :run
end

Chef::Log.info("******Creating Weather Virtualenv.******")

execute "Create Virtualenv" do
    cwd '/home/ec2-user/weather'
    command "virtualenv env"
    action :run
end
