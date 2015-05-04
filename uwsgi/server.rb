Chef::Log.info("******Starting WSGI.******")

execute "Install nginx" do
    command "sudo uwsgi --socket 127.0.0.1:8080 -w WSGI:app &"
    action :run
end
