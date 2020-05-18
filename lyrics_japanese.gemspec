# frozen_string_literal: true

require_relative 'lib/lyrics_japanese/version'

Gem::Specification.new do |spec|
  spec.name          = 'lyrics_japanese'
  spec.version       = LyricsJapanese::VERSION
  spec.authors       = ['Shinya Ohtani (shinyaohtani@github)']
  spec.email         = ['shinya_ohtani@yahoo.co.jp']

  spec.summary       = 'Convert natural Japanese sentences into word-spacing notes for musical notes.'
  spec.description   = LyricsJapanese::DESCRIPTION
  spec.homepage      = LyricsJapanese::REPOSITORY_URL + '/tree/master/README.md'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = LyricsJapanese::REPOSITORY_URL
  spec.metadata['changelog_uri'] = LyricsJapanese::REPOSITORY_URL + '/tree/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'natto', '>= 1.2.0'
  spec.add_runtime_dependency 'yaml', '>= 0.1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'github_changelog_generator', '>= 1.15.2'
  spec.add_development_dependency 'pry', '>= 0.13.1'
  spec.add_development_dependency 'pry-byebug', '>= 3.9.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '>= 3.9.0'
  spec.add_development_dependency 'rubocop', '>= 0.83.0'
  spec.add_development_dependency 'rubocop-performance', '>= 1.5.2'
  spec.add_development_dependency 'rubocop-rspec', '>= 1.39.0'
end
