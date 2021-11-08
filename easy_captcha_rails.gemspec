# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "easy_captcha/version"

Gem::Specification.new do |s|
  s.name = "easy_captcha_rails"
  s.version = EasyCaptcha::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Huitao Chen", "Marco Scholl", "Alexander Dreher"]
  s.date = "2021-10-28"
  s.description = "Captcha-Plugin for Rails"
  s.email = "h980501427@163.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = `git ls-files`.split("\n")

  s.homepage = "http://github.com/chenhuitao/easy_captcha_rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "1.8.15"
  s.summary = "Captcha-Plugin for Rails 5+"

  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency('rails', [">= 5.0.0"])
  s.add_dependency('bundler', [">= 1.1.0"])

  if defined?(PLATFORM) && PLATFORM == 'java'
    s.add_runtime_dependency('rmagick4j','>= 0.3.7')
  else
    s.add_runtime_dependency('rmagick','>= 2.13.1')
  end
end
