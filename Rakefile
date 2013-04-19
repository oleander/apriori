#!/usr/bin/env rake

require_relative 'config/requirements'
require_relative 'config/hoe' # setup Hoe + all gem configuration

require 'bundler/setup'

class Rake::Task
  def abandon
    prerequisites.clear
    @actions.clear
  end
end

Dir['tasks/**/*.rake'].each { |rake| load rake }

Rake::Task[:default].abandon
task :default => :extension 



# #!/usr/bin/env rake
# begin
#   require 'bundler/setup'
# rescue LoadError
#   puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
# end
# begin
#   require 'rdoc/task'
# rescue LoadError
#   require 'rdoc/rdoc'
#   require 'rake/rdoctask'
#   RDoc::Task = Rake::RDocTask
# end

# RDoc::Task.new(:rdoc) do |rdoc|
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title    = 'ToParam'
#   rdoc.options << '--line-numbers'
#   rdoc.rdoc_files.include('README.rdoc')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end

# Bundler::GemHelper.install_tasks