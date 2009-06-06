# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{recommend}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jugyo"]
  s.date = %q{2009-06-06}
  s.description = %q{Library for recommendation.}
  s.email = %q{jugyo.org@gmail.com}
  s.files = ["Rakefile", "README.rdoc", "lib/recommend.rb", "spec/recommend_spec.rb", "examples/example1.rb"]
  s.homepage = %q{http://github.com/jugyo/recommend}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{recommend}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Library for recommendation.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
