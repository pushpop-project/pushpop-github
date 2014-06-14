# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'pushpop-github/version'

Gem::Specification.new do |s|

  s.name        = "pushpop-github"
  s.version     = Pushpop::Github::VERSION
  s.authors     = ["Josh Dzielak"]
  s.email       = "josh@keen.io"
  s.homepage    = "https://github.com/pushpop-project/pushpop-github"
  s.summary     = "Github API plugin for pushpop"
  s.description = "Github API plugin for pushpop"

  s.add_dependency "pushpop"
  s.add_dependency "github_api"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

