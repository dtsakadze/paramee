# frozen_string_literal: true

require_relative 'lib/paramee/version'

Gem::Specification.new do |spec|
  spec.name = 'paramee'
  spec.version = Paramee::VERSION
  spec.authors = ['Davit Tsakadze']
  spec.email = ['davittsakadzee@gmail.com']

  spec.summary = 'Rails gem for controller parameters validation.'
  spec.description = 'Rails gem for controller parameters validation.'
  spec.homepage = 'https://github.com/dtsakadze/paramee'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/dtsakadze/paramee'
  spec.metadata['changelog_uri'] = 'https://github.com/dtsakadze/paramee/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 6.0.0'

  spec.add_development_dependency 'rspec-rails', '>= 6.0.0'
  spec.add_development_dependency 'rubocop-rails', '>= 2.28.0'
end
