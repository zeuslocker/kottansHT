require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: 'spec'

task test: :rubocop

task :rubocop do
  sh 'rubocop'
end
