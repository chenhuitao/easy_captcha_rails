# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "easy_captcha/version"

Gem::Specification.new do |s|
  s.name = "easy_captcha_rails"
  s.version = EasyCaptcha::VERSION

  s.required_ruby_version = ">= 2.2.2"
  s.required_rubygems_version = ">= 1.8.11"
  s.authors = ["Huitao Chen", "Marco Scholl", "Alexander Dreher"]
  s.date = "2021-10-28"
  s.description = "Captcha-Plugin for Rails"
  s.email = "h980501427@163.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = `git ls-files`.split("\n")

  s.homepage = "https://github.com/chenhuitao/easy_captcha_rails"
  s.licenses = ["MIT"]
  s.summary = "Captcha-Plugin for Rails 5+"

  s.require_paths = ["lib"]

  s.add_dependency("rails", [">= 5.0.0"])

  if defined?(PLATFORM) && PLATFORM == "java"
    s.add_runtime_dependency("rmagick4j", ">= 0.3.7")
  else
    s.add_runtime_dependency("rmagick", ">= 2.13.1")
  end
end
