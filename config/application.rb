# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KusodokataRails
  class Application < Rails::Application
    config.generators do |generator|
      generator.helper false
      generator.javascripts false
      generator.stylesheets false
      generator.template_engine :slim
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.generators do |generator|
      generator.orm :dokata_model, migration: false
      generator.migration false
      generator.helper false
      generator.assets false
      generator.template_engine :slim
    end

    config.autoload_paths << Rails.root.join('lib')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
