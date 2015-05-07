Chef::Log.info("******Installing Flask ElasticSearch Client.******")

execute "Install Flask" do
    command "/home/ec2-user/search/env/bin/pip install elasticsearch"
    action :run
end
