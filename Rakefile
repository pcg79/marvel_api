require 'bundler/gem_tasks'

task :default => :test
require 'rake/testtask'
Rake::TestTask.new do |test|
  test.libs << 'test'
  test.ruby_opts << "-rubygems"
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end
