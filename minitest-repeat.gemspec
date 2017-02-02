# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'minitest-repeat'
  spec.version       = '0.1'
  spec.authors       = ['Michael Lutsiuk']
  spec.email         = ['michael.lutsiuk@gmail.com']
  spec.summary       = 'Allows to run your minitest suites more than one time'
  spec.description   = ''
  spec.homepage      = 'https://github.com/mluts/minitest-repeat'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
