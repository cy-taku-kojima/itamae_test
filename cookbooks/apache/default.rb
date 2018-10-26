package "httpd" do
  action :install 
end

execute 'enable start' do
    command 'systemctl enabled httpd'
    command 'systemctl start httpd'
end
