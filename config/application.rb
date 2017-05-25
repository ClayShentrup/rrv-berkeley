require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(*Rails.groups)

require('turbolinks')

module RrvBerkeley
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    require('responders')
    config.app_generators.scaffold_controller(:responders_controller)

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults(5.1)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.generators do |g|
      g.assets(false)
      g.helper(false) # Presenters are preferable to helpers.

      require('haml-rails')
      g.template_engine(:haml)

      # used by sass-rails; this prevents a non-thread-safe WARN when running
      # specs if assets aren't compiled
      require('sass-rails')
      config.sass.preferred_syntax = :sass

      g.test_framework(:rspec, view_specs: false)
      g.fixture_replacement(:factory_girl, dir: 'spec/factories')
    end
  end
end
