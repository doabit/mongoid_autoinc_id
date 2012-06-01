# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongoid_autoinc_id/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["doabit"]
  gem.email         = ["doinsist@gmail.com"]
  gem.description   = %q{Auto increment id for mongoid 3.0}
  gem.summary       = %q{Auto increment id for mongoid 3.0}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongoid_autoinc_id"
  gem.require_paths = ["lib"]
  gem.version       = MongoidAutoincId::VERSION
  gem.add_dependency 'mongoid', '~> 3.0.0.rc'
  gem.add_development_dependency 'rspec', '~> 2.10.0'
end
