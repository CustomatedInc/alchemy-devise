$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy/devise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "alchemy-devise"
  s.version = Alchemy::Devise::VERSION
  s.authors = ["Thomas von Deyen"]
  s.email = ["thomas@vondeyen.com"]
  s.homepage = "https://alchemy-cms.com"
  s.summary = "Devise based user authentication for AlchemyCMS."
  s.description = "Devise based user authentication for AlchemyCMS."

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "CHANGELOG.md", "README.md"]

  s.add_dependency "alchemy_cms", [">= 8.0.0.a", "< 9.0"]
  s.add_dependency "devise", ["~> 4.9"]

  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "rails-controller-testing"
  s.add_development_dependency "rspec-activemodel-mocks", "~> 1.0"
  s.add_development_dependency "rspec-rails", "~> 8.0"
  s.add_development_dependency "simplecov"

  s.post_install_message = <<~MSG
    In order to complete the installation or the upgrade of Alchemy::Devise run:

      $ bin/rails g alchemy:devise:install

  MSG
end
