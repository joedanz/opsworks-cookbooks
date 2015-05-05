Chef::Log.info("******Installing gunicorn.******")

execute "Install gunicorn" do
    command "/home/ec2-user/search/env/bin/pip install gunicorn"
    action :run
end

Chef::Log.info("******Running gunicorn.******")

execute "Run gunicorn" do
    command "/home/ec2-user/search/env/bin/gunicorn -b 0.0.0.0:8080 app:app"
    action :run
end
