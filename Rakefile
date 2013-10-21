desc "Arrancamos servidor"
task :default do
  sh "rackup"
end

desc "Testing con pruebas unitarias"
task :test_unit do
	sh "ruby tests/test_rock_paper.rb"
end

desc "Testing con rspec"
task :test_rspec do
	sh "rspec spec/rsack/server_spec.rb"
end

desc "Piedra"
task :rock do
  sh %q{curl -v 'http://localhost:9292?choice=rock'}
end

desc "Papel"
task :paper do
  sh %q{curl -v 'http://localhost:9292?choice=paper'}
end

desc "Tijeras"
task :scissors do
  sh %q{curl -v 'http://localhost:9292?choice=scissors'}
end
