require_relative 'boot'

require 'rails/all'

# Don't do this, because:
# http://myronmars.to/n/dev-blog/2012/12/5-reasons-to-avoid-bundler-require
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(*Rails.groups)

module RrvBerkeley
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
