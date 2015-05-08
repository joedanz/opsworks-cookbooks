Chef::Log.info("******Git - Checkout ElasticSearch Application.******")

git "/home/ec2-user/app" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end
