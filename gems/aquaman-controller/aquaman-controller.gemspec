
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aquaman-controller/version"

Gem::Specification.new do |spec|
  spec.name          = "aquaman-controller"
  spec.version       = AquamanController::VERSION
  spec.authors       = ["Mark King"]
  spec.email         = ["mark@vemek.co"]

  spec.summary       = "Gem to control a water pump and moisture sensor attached to Raspberry Pi"
  spec.description   = "Gem to control a water pump and moisture sensor attached to Raspberry Pi"
  spec.homepage      = "https://github.com/vemek/aquaman"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "rpi_gpio", "~> 0.3.3"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
