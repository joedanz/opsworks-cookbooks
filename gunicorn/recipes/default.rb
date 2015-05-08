Chef::Log.info("******Installing gunicorn.******")

execute "Install gunicorn" do
    command "/home/ec2-user/app/env/bin/pip install gunicorn"
    action :run
end

Chef::Log.info("******Running gunicorn.******")

execute "Run gunicorn" do
    cwd '/home/ec2-user/app'
    command "env/bin/gunicorn -b 0.0.0.0:8080 app:app &"
    action :run
end
