require 'rake'

execute "test yaml" do
   test = node['hostname']['name']
   command "mkdir #{test}"
end
