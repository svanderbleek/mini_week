lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_week/version'

Gem::Specification.new do |gem|
  gem.name          = "mini_week"
  gem.version       = MiniWeek::VERSION
  gem.authors       = ["Sandy Vanderbleek"]
  gem.email         = ["sandy.vanderbleek@gmail.com"]
  gem.description   = %q{Rails week view helper.}
  gem.summary       = %q{Rails week view helper.}
  gem.homepage      = "http://github.com/svanderbleek/mini_week"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"

  gem.add_dependency "rails", "< 4.1", "> 3.2"

  gem.add_development_dependency "rake"
end
