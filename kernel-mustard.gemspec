# frozen_string_literal: true

require_relative "lib/kernel/mustard/version"

Gem::Specification.new do |spec|
  spec.name = "kernel-mustard"
  spec.version = KernelMustard::VERSION
  spec.authors = ["Reese Williams"]
  spec.email = ["reese@reesew.com"]

  spec.summary = "Monkeypatches for asserting values as non-nil."
  spec.homepage = "https://github.com/reese/kernel-mustard"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/tree/main/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = ["lib/kernel/mustard.rb"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
