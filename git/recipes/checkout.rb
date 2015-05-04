Chef::Log.info("******Git - Checkout Application.******")

git "/home/search" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  action :sync
end

Chef::Log.info("******Git - Update Folder Ownership.******")

execute "Update Permissions" do
    command "sudo chown -R ec2-user:ec2-user /home/search"
    action :run
end
