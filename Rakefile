# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "resque-web_no_act"
  gem.homepage = "http://github.com/ticktricktrack/resque-web_no_act"
  gem.license = "MIT"
  gem.summary = %Q{Look don't touch!}
  gem.description = %Q{A stripped version of the Resque web interface that's safe to use by not so trustworthy personnel. You get all the same information as the regular interface, but can't delete or retry anything.}
  gem.email = "ticktricktrack@gmail.com"
  gem.authors = ["Rainer Kuhn"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "resque-web_no_act #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
