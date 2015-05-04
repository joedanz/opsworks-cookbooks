Chef::Log.info("******Installing Flask.******")

execute "Install Flask" do
    command "pip install Flask"
    action :run
end
