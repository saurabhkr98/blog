require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))
    config.api_only = false
    config.assets.paths << Rails.root.join('app', 'assets', 'images')
    config.eager_load_paths << Rails.root.join('gems')
    config.eager_load_paths << Rails.root.join('lib')
    config.autoload_paths << Rails.root.join('gems')
    config.autoload_paths << Rails.root.join('lib')

    # hook components folder to work with rails
    Dir[Rails.root.join('components/*')].each do |path|
      # check for all directories
      next unless File.directory?(path)

      # eager load/autoload component specific folders
      # eager load for production + autoload for test and development env
      folders = %w[config lib app app/controllers app/mailers app/models app/elasticsearch app/queries app/repositories app/services app/values app/workers app/enums] # TODO: Remove elasticsearch when re indexer is updated
      folders.each do |folder|
        config.eager_load_paths << Rails.root.join(path, folder)
        config.autoload_paths << Rails.root.join(path, folder)
      end

      # load all routes from components
      # add to top of routes since catch all is last line in routes.rb
      config.paths['config/routes.rb'].unshift(Rails.root.join(path, 'config/routes.rb'))

      # load locales from components
      config.i18n.load_path += Dir[Rails.root.join(path, 'config/locales/**/*.yml')]
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
