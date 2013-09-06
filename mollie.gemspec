# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mollie/version"

Gem::Specification.new do |s|
  s.name        = "mollie"
  s.version     = Mollie::VERSION
  s.authors     = ["Henk Meijer"]
  s.email       = ["meijerhenk@gmail.com"]
  s.homepage    = "https://github.com/hemnkm/mollie"
  s.summary     = %q{Make iDeal and Credit Card Mollie payments without the pain}
  s.description = %q{A simple Ruby implementation for handeling iDeal transactions and Credit Card transactions with the Mollie API}

  # s.rubyforge_project = "mollie"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "vcr"
  s.add_development_dependency "fakeweb"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "yard"

  s.add_dependency "rake", "> 0.9.0"
  s.add_dependency "faraday", "~> 0.8.0"
  s.add_dependency "faraday_middleware", "~> 0.9.0"
  s.add_dependency "multi_xml", "~> 0.5.2"
  s.add_dependency "nokogiri", "~> 1.5"
end
