require 'rake/testtask'

desc "Default Task"
task :default => [ :test ]

Rake::TestTask.new do |t|
  t.libs << "libs"
  t.test_files = FileList['tests/tc*.rb']
end