require_relative "lib/custom_data_validity_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "custom-data-validity-gem"
  spec.version       = CustomDataValidityGem::VERSION
  spec.authors       = ["Aswathi Kovval Veetil"]
  spec.email         = ["akv2595@gmail.com"]

  spec.summary       = "A gem to validate various custom data types like email, phone numbers, and postal codes."
  spec.description   = "Custom-Data-Validity-Gem provides flexible validation methods for common data types like email addresses, phone numbers, and postal codes in a reusable Ruby gem."
  spec.homepage      = "https://github.com/KovvalVeetil/custom-data-validity-gem"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # Metadata for gem (You can remove or update the TODO lines if not applicable)
  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be included in the gem
  gemspec = File.basename(__FILE__)
  spec.files = Dir["{lib/**/*.rb,bin/*,README.md}"].reject do |f|
    (f == gemspec) || f.start_with?(*%w[.git appveyor Gemfile])
  end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
