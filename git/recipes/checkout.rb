Chef::Log.info("******Git - Checkout ElasticSearch Application.******")

git "/home/ec2-user/search" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end

Chef::Log.info("******Git - Checkout BPM Application.******")

git "/home/ec2-user/bpm" do
  repository "git://github.com/joedanz/flask-bpm.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end

Chef::Log.info("******Git - Checkout Weather Application.******")

git "/home/ec2-user/weather" do
  repository "git://github.com/joedanz/flask-weather.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end
