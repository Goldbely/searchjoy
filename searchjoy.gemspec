
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "searchjoy/version"

Gem::Specification.new do |spec|
  spec.name          = "searchjoy"
  spec.version       = Searchjoy::VERSION
  spec.summary       = "Search analytics made easy"
  spec.homepage      = "https://github.com/ankane/searchjoy"
  spec.license       = "MIT"

  spec.author        = "Andrew Kane"
  spec.email         = "andrew@chartkick.com"

  spec.files         = Dir["*.{md,txt}", "{app,config,lib}/**/*"]
  spec.require_path  = "lib"

  spec.required_ruby_version = ">= 2.4"

  spec.add_dependency "chartkick", ">= 3.2"
  spec.add_dependency "groupdate", ">= 3"
  spec.add_dependency "activerecord", ">= 5"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "sqlite3", "~> 1.3.0"
  spec.add_development_dependency "searchkick"
end
