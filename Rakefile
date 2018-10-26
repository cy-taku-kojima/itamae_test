require 'rake'
require 'rspec/core/rake_task'

namespace :new_recipe do
  desc 'add new folder and default.rb'
  task :create, ['name'] do |tasks,args|
	name = args[:name]
	command = ''
	command << "mkdir ./cookbooks/#{name} &&"
	command << "touch ./cookbooks/#{name}/default.rb"
	sh command
   
  end

end

namespace :action_resipe do
	desc 'recipeを実行する'
	task :action,[:name] do| task,args|
 	name = args[:name]
 	recipe = []
		Dir.glob("./cookbooks/#{name}/*").each do| dir|
			#next unless File.directory?(dir)
 			tmp = File.basename(dir)
 			recipe << tmp
 		end
 		recipe.each do |tmp|
			command = 'itamae local '
			command << "./cookbooks/#{name}/#{tmp}"
			sh command
		end  
	end
end	
