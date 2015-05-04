Chef::Log.info("******Installing gunicorn.******")

execute "Install gunicorn" do
    command "/home/ec2-user/search/env/bin/pip install gunicorn"
    action :run
end
