# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "git_presenter"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Colin Gemmell"]
  s.date = "2012-03-20"
  s.description = "Code presentation tool using git"
  s.email = "pythonandchips@gmail.com"
  s.executables = ["git-presenter"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "bin/git-presenter",
    "git_presenter.gemspec",
    "lib/git_presenter.rb",
    "spec/integration/initialize_presentation_spec.rb",
    "spec/integration/moving_through_presentation_spec.rb",
    "spec/integration/processing_user_command_spec.rb",
    "spec/integration/start_presentation_spec.rb",
    "spec/integration/status_line_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/repo_helpers.rb"
  ]
  s.homepage = "http://github.com/pythonandchips/git-presenter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Code presentation tool using git"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grit>, ["~> 2.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.7"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9"])
    else
      s.add_dependency(%q<grit>, ["~> 2.4"])
      s.add_dependency(%q<rspec>, ["~> 2.7"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_dependency(%q<rcov>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<grit>, ["~> 2.4"])
    s.add_dependency(%q<rspec>, ["~> 2.7"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6"])
    s.add_dependency(%q<rcov>, ["~> 0.9"])
  end
end
