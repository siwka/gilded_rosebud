desc "Run all specs"
task :spec do
  sh "rspec ."
end

desc "Run specs, halting on the first failure"
task :fast do
  sh "rspec --fail-fast ."
end

task :default => :spec
