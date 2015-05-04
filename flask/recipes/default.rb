Chef::Log.info("******Installing Flask.******")

execute "Install Flask" do
    command "pip install Flask"
    action :run
end

Chef::Log.info("******Installing uWSGI.******")

execute "Install Flask" do
    command "pip install uwsgi"
    action :run
end
