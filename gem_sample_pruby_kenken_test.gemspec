require_relative 'lib/gem_sample_pruby_kenken_test/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_sample_pruby_kenken_test"
  spec.version       = GemSamplePrubyKenkenTest::VERSION
  spec.authors       = ["ksugiyama"]
  spec.email         = ["sugiyama.30n@gmail.com"]

  spec.summary       = %q{first gem by keneken}
  spec.description   = %q{my first gem bykenken but tried twice}
  spec.homepage      = "https://github.com/ksugiyama-kajika/gem_sample_pruby_kenken_test.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
