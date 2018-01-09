
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "primetable/version"

Gem::Specification.new do |spec|
  spec.name          = "matthewrudy-primetable"
  spec.version       = Primetable::VERSION
  spec.authors       = ["Matthew Rudy Jacobs"]
  spec.email         = ["matthewrudyjacobs@gmail.com"]

  spec.summary       = %q{Prints out a multiplication table of the first N prime numbers.}
  spec.description   = %q{A command line tool which takes an input N, and prints the first N prime numbers in a multiplication table.}
  spec.homepage      = "https://github.com/matthewrudy/primetable"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
