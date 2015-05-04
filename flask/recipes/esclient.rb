Chef::Log.info("******Installing Flask ElasticSearch Client.******")

execute "Install Flask" do
    command "pip install Flask-ESClient"
    action :run
end
