# encoding: utf-8
include_recipe '../java/default.rb'

remote_file  "rpm file deliver" do
	path "/tmp/jenkins-1.658-1.1.noarch.rpm"
	source "/tmp/jenkins-1.658-1.1.noarch.rpm"
end 


execute "install erlang repo" do
	user 'root'
	command "rpm -ivh /tmp/jenkins-1.658-1.1.noarch.rpm"
end


