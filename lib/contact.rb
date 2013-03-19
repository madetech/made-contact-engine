require "contact/engine"

module Contact
  class Engine < Rails::Engine
    isolate_namespace Contact

    config.autoload_paths << File.join(Contact::Engine.root, 'app', 'concerns')

    initializer :contact do
      ActiveAdmin.application.load_paths.unshift Dir[Contact::Engine.root.join('app', 'admin')] if defined?(ActiveAdmin)
    end
  end

  def self.config(&block)
    @@config ||= Product::Engine::Configuration.new

    yield @@config if block

    return @@config
  end
end
