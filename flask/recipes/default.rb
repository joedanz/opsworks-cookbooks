Chef::Log.info("******Installing Flask.******")

execute "Install Flask" do
    command "/home/ec2-user/search/env/bin/pip install Flask"
    action :run
end
