# frozen_string_literal: true

require_relative 'lib/lyrics_japanese/version'

Gem::Specification.new do |spec|
  spec.name          = 'lyrics_japanese'
  spec.version       = LyricsJapanese::VERSION
  spec.authors       = ['Shinya Ohtani (shinyaohtani@github)']
  spec.email         = ['shinya_ohtani@yahoo.co.jp']

  spec.summary       = 'Change normal Japanese sentences into word-spacing notes for musical notes.'
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
end
