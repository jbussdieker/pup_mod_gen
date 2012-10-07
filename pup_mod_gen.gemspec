# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pup_mod_gen/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joshua B. Bussdieker"]
  gem.email         = ["jbussdieker@gmail.com"]
  gem.description   = %q{Generate blank puppet modules.}
  gem.summary       = %q{Generate blank puppet modules. Creates a consistent folder structure.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "pup_mod_gen"
  gem.require_paths = ["lib"]
  gem.version       = PupModGen::VERSION

  gem.add_development_dependency 'rspec', '~> 2.5'
  gem.add_development_dependency 'rake'
end
