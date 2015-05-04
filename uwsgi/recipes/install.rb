Chef::Log.info("******Installing uWSGI.******")

execute "Install uwsgi" do
    command "/home/ec2-user/search/env/bin/pip install uwsgi"
    action :run
end
