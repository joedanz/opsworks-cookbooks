git "/home/search" do
  repository "git://github.com/joedanz/flask-elasticsearch.git"
  revision "master"
  action :sync
  user "ec2-user"
end
