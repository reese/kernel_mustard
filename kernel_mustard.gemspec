# frozen_string_literal: true

require_relative "lib/kernel_mustard/version"

Gem::Specification.new do |spec|
  spec.name = "kernel_mustard"
  spec.version = KernelMustard::VERSION
  spec.authors = ["Reese Williams"]
  spec.email = ["reese@reesew.com"]

  spec.summary = "Monkeypatches for asserting values as non-nil."
  spec.homepage = "https://github.com/reese/kernel_mustard"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/tree/main/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = ["lib/kernel_mustard/kernel_mustard.rb", "rbi/kernel_mustard/kernel.rbi", "rbi/kernel_mustard/nil_class.rbi"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib/kernel_mustard"]
end
