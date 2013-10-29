# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "librato-metrics-memcached/version"

Gem::Specification.new do |s|
  s.name        = "librato-metrics-memcached"
  s.version     = Librato::Metrics::Memcached::VERSION
  s.authors     = ["Mike Heffner"]
  s.email       = ["mike@librato.com"]
  s.homepage    = "https://github.com/librato/librato-metrics-memcached"
  s.summary     = %q{Push memcached stats to Librato Metrics}
  s.description = %q{Pull stats from memcached and push to Librato Metrics}

  s.rubyforge_project = "librato-metrics-memcached"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency(%q<trollop>, ["~> 1.16.2"])
  s.add_runtime_dependency(%q<memcached>, ["~> 1.4.1"])
  s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.1.0"])
  s.add_runtime_dependency(%q<librato-metrics>, ["~> 1.1.1"])

  s.add_development_dependency(%q<rake>, [">= 0"])
  s.add_development_dependency(%q<shoulda>, [">= 0"])
  s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
end
