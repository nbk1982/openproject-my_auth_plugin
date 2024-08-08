# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require "open_project/plugins"

module OpenProject::MyAuthPlugin
  class Engine < ::Rails::Engine
    engine_name :openproject_my_auth_plugin

    include OpenProject::Plugins::ActsAsOpEngine

    register "openproject-my_auth_plugin",
             :author_url => "https://openproject.org",
             :requires_openproject => ">= 6.0.0"

  end
end
