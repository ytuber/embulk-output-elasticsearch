
Gem::Specification.new do |spec|
  spec.name          = "embulk-output-elasticsearch"
  spec.version       = "0.1.8"
  spec.authors       = ["Muga Nishizawa"]
  spec.summary       = %[Elasticsearch output plugin for Embulk]
  spec.description   = %[Elasticsearch output plugin is an Embulk plugin that loads records to Elasticsearch read by any input plugins. Search the input plugins by "embulk-input" keyword.]
  spec.email         = ["muga.nishizawa@gmail.com"]
  spec.licenses      = ["Apache 2.0"]
  spec.homepage      = "https://github.com/muga/embulk-output-elasticsearch"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r"^(test|spec)/")
  spec.require_paths = ["lib"]
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.has_rdoc      = false

  spec.add_development_dependency "bundler", [">= 1.0"]
  spec.add_development_dependency "rake", [">= 10.0"]
  spec.add_development_dependency "test-unit", ["~> 3.0.2"]
end
