require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module TwInOutWeb
  class Application < Rails::Application

    config.generators do |g|
        g.fixture_replacement :factory_girl
    end

    config.autoload_paths << config.root.join("app/presenters").to_s

    config.time_zone = 'Brasilia'

    config.encoding = "utf-8"

    config.filter_parameters += [:password]

    config.active_support.escape_html_entities_in_json = true

    config.active_record.whitelist_attributes = true

    config.assets.enabled = true

    config.assets.version = '1.0'

    config.assets.initialize_on_precompile = false
  end
end
