Chef::Log.info("******Installing uWSGI.******")

execute "Install Flask" do
    command "pip install uwsgi"
    action :run
end
