# frozen_string_literal: true

require_relative 'lib/r18n-desktop/version'

Gem::Specification.new do |s|
  s.name     = 'r18n-desktop'
  s.version  = R18n::Desktop::VERSION

  s.summary     = 'A i18n tool to translate your Ruby desktop application.'
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

  s.author   = 'Andrey Sitnik'
  s.email    = 'andrey@sitnik.ru'
  s.homepage = 'https://github.com/r18n/r18n/tree/master/r18n-desktop'
  s.license  = 'LGPL-3.0'

  s.required_ruby_version = '>= 2.5', '< 4'

  s.add_dependency 'r18n-core', '~> 5.0'

  s.add_development_dependency 'pry-byebug', '~> 3.9'

  s.add_development_dependency 'rubocop', '~> 1.6'
  s.add_development_dependency 'rubocop-performance', '~> 1.9'
  s.add_development_dependency 'rubocop-rake', '~> 0.5.1'

  s.add_development_dependency 'rspec', '~> 3.10'
end
