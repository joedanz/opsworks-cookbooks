Chef::Log.info("******Git - Checkout Application.******")

git "/home/search" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  action :sync
  user "root"
end
