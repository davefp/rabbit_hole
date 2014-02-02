# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'task_stack/version'

Gem::Specification.new do |spec|
  spec.name          = "task_stack"
  spec.version       = TaskStack::VERSION
  spec.authors       = ["David Underwood"]
  spec.email         = ["davefp@gmail.com"]
  spec.summary       = %q{A quick and dirty command-line task organizer for finding your way out of rabbit-holes}
  spec.description   = %q{Task Stack is designed for those times when you realize you're disappearing down a rabbit-hole and want to remember how you got there. Add successive tasks with `taskstack add TASK`. Mark the current task completed with `taskstack complete`, and it'll show you the task you were working on previously.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
