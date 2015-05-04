Chef::Log.info("******Installing uWSGI.******")

execute "Install uwsgi" do
    command "pip install uwsgi"
    action :run
end
