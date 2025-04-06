module Challenge
  class Engine < ::Rails::Engine
    isolate_namespace Challenge

    initializer "challenge.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")
    end
  end
end
