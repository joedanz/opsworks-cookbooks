Chef::Log.info("******Git - Checkout Application.******")

git "/home/ec2-user/search" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end
