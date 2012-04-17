require 'rake'
require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'

# rake
task :default do
  sh %{rake -T}
end

# rake spec
desc 'Run all RSpec tests'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ['--color --format documentation']
end
