require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Face
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.generators do |generators|
      generators.template_engine = :slim
    end
  end
end
