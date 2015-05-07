Chef::Log.info("******Installing ElasticSearch Flask.******")

execute "Install ElasticSearch Flask" do
    command "/home/ec2-user/search/env/bin/pip install Flask"
    action :run
end

Chef::Log.info("******Installing BPM Flask.******")

execute "Install BPM Flask" do
    command "/home/ec2-user/bpm/env/bin/pip install Flask"
    action :run
end

Chef::Log.info("******Installing Weather Flask.******")

execute "Install Weather Flask" do
    command "/home/ec2-user/weather/env/bin/pip install Flask"
    action :run
end
