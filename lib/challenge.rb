require "challenge/version"
require "challenge/engine"

require "importmap-rails"

module Challenge
  class << self
    attr_accessor :configuration
  end

  class Configuration
    attr_reader :importmap
    attr_accessor :tailwind_content

    def initialize
      @importmap = Importmap::Map.new
      @importmap.draw(Engine.root.join("config/importmap.rb"))
      @tailwind_content = [
        "#{Challenge::Engine.root}/app/views/**/*",
        "#{Challenge::Engine.root}/app/helpers/**/*",
        "#{Challenge::Engine.root}/app/controllers/**/*",
        "#{Challenge::Engine.root}/app/javascript/**/*.js"
      ]
    end
  end

  def self.init_config
    self.configuration ||= Configuration.new
  end

  def self.configure
    init_config
    yield(configuration)
  end
end

Challenge.init_config
