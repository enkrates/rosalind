require 'rake/testtask'

desc "Default Task"
task :default => [ :test ]

Rake::TestTask.new do |t|
  #t.libs << "test"
  t.test_files = FileList['tests/tc*.rb']
  # t.verbose = true
end