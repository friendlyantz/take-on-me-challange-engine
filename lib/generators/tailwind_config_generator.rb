# frozen_string_literal: true

require "rails/generators"

class TailwindConfigGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  def create_tailwind_config_file
    @engines_paths = Challenge.configuration.tailwind_content

    # The second parameter for the template method is required only if the host app
    # for an external host app, remove that parameter.
    template "config/tailwind.config.js"
  end
end
