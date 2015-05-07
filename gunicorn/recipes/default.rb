Chef::Log.info("******Installing gunicorn.******")

execute "Install gunicorn" do
    command "/home/ec2-user/search/env/bin/pip install gunicorn"
    action :run
end

Chef::Log.info("******Running gunicorn for ElasticSearch.******")

execute "Run ElasticSearch gunicorn" do
    cwd '/home/ec2-user/search'
    command "env/bin/gunicorn -b 0.0.0.0:8080 app:app &"
    action :run
end

Chef::Log.info("******Running gunicorn for BPM.******")

execute "Run BPM gunicorn" do
    cwd '/home/ec2-user/bpm'
    command "env/bin/gunicorn -b 0.0.0.0:8081 app:app &"
    action :run
end

Chef::Log.info("******Running gunicorn for Weather.******")

execute "Run Weather gunicorn" do
    cwd '/home/ec2-user/weather'
    command "env/bin/gunicorn -b 0.0.0.0:8082 app:app &"
    action :run
end
