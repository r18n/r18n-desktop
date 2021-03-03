# frozen_string_literal: true

require_relative 'lib/r18n-desktop/version'

Gem::Specification.new do |s|
  s.name     = 'r18n-desktop'
  s.version  = R18n::Desktop::VERSION

  s.summary     = 'A i18n tool to translate your Ruby desktop application'
  s.description = <<-DESC
    A i18n tool to translate your desktop application in several languages.
    It is just a wrapper for R18n core library.
    It has nice Ruby-style syntax, filters, flexible locales, custom loaders,
    translation support for any classes, time and number localization, several
    user language support, agnostic core package with out-of-box support for
    Rails, Sinatra and desktop applications.
  DESC

  s.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE', 'ChangeLog.md']
  s.extra_rdoc_files = ['README.md', 'LICENSE']

  s.authors  = ['Andrey Sitnik', 'Alexander Popov']
  s.email    = ['andrey@sitnik.ru', 'alex.wayfer@gmail.com']
  s.license  = 'LGPL-3.0'

  github_uri = "https://github.com/r18n/#{s.name}"

  s.homepage = github_uri

  s.metadata = {
    'bug_tracker_uri' => "#{github_uri}/issues",
    'changelog_uri' => "#{github_uri}/blob/#{s.version}/ChangeLog.md",
    'documentation_uri' => "http://www.rubydoc.info/gems/#{s.name}/#{s.version}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => github_uri
  }

  s.required_ruby_version = '>= 2.5', '< 4'

  s.add_dependency 'r18n-core', '~> 5.0'

  s.add_development_dependency 'pry-byebug', '~> 3.9'

  s.add_development_dependency 'gem_toys', '~> 0.7.1'
  s.add_development_dependency 'toys', '~> 0.11.0'

  s.add_development_dependency 'rubocop', '~> 1.6'
  s.add_development_dependency 'rubocop-performance', '~> 1.9'
  s.add_development_dependency 'rubocop-rake', '~> 0.5.1'

  s.add_development_dependency 'codecov', '~> 0.5.0'
  s.add_development_dependency 'rspec', '~> 3.10'
  s.add_development_dependency 'simplecov', '~> 0.21.0'
end
