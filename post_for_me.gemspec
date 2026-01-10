# frozen_string_literal: true

require_relative "lib/post_for_me/version"

Gem::Specification.new do |s|
  s.name = "post-for-me"
  s.version = PostForMe::VERSION
  s.summary = "Ruby library to access the Post For Me API"
  s.authors = ["Post For Me"]
  s.email = "postforme@daymoon.dev"
  s.homepage = "https://gemdocs.org/gems/post-for-me"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/DayMoonDevelopment/post-for-me-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
