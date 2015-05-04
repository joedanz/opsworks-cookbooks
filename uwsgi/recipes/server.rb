Chef::Log.info("******Starting WSGI.******")

execute "Run uwsgi" do
    command "sudo /home/ec2-user/search/env/bin/uwsgi --socket 127.0.0.1:8080 -w WSGI:app &"
    action :run
end
