Chef::Log.info("******Running gunicorn.******")

execute "Run gunicorn" do
    command "/home/ec2-user/search/env/bin/gunicorn -b 0.0.0.0:8080 app:app"
    action :run
end
