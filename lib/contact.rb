require "contact/engine"

module Contact
  mattr_accessor :cache_sweeper
  @@cache_sweeper = false

  mattr_accessor :admin_enabled
  @@admin_enabled = [:feedback, :address, :newsletter]

  mattr_accessor :image_styles
  @@image_styles = {}

  class Engine < Rails::Engine
    isolate_namespace Contact

    config.autoload_paths << File.join(Contact::Engine.root, 'app', 'concerns')

    initializer :contact do
      ActiveAdmin.application.load_paths.unshift Dir[Contact::Engine.root.join('app', 'admin')] if defined?(ActiveAdmin)
    end
  end

  def self.config(&block)
    yield self if block
    return self
  end
end
