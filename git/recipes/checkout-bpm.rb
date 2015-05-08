Chef::Log.info("******Git - Checkout BPM Application.******")

git "/home/ec2-user/app" do
  repository "git://github.com/joedanz/flask-bpm.git"
  revision "master"
  user "ec2-user"
  group "ec2-user"
  action :sync
end
