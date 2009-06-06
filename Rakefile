require 'spec/rake/spectask'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'

name = 'recommend'
version = '0.1.0'

spec = Gem::Specification.new do |s|
  s.name = name
  s.version = version
  s.summary = "Library for recommendation."
  s.description = "Library for recommendation."
  s.files = %w(Rakefile README.rdoc) + Dir.glob("{lib,spec,examples}/**/*")
  s.author = 'jugyo'
  s.email = 'jugyo.org@gmail.com'
  s.homepage = 'http://github.com/jugyo/recommend'
  s.rubyforge_project = 'recommend'
  s.has_rdoc = false
end

task :gemspec do
  filename = "#{name}.gemspec"
  open(filename, 'w') do |f|
    f.write spec.to_ruby
  end
  puts <<-EOS
  Successfully generated gemspec
  Name: #{name}
  Version: #{version}
  File: #{filename}
  EOS
end

Rake::GemPackageTask.new(spec) do |p|
  p.need_tar = true
end

task :install => [ :package ] do
  sh %{sudo gem install pkg/#{name}-#{version}.gem}
end

task :uninstall => [ :clean ] do
  sh %{sudo gem uninstall #{name}}
end

desc 'run all specs'
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
end

CLEAN.include [ 'pkg', '*.gem' ]
