=begin
Este archivo está sujeto a la Licencia Pública General de GNU (GPL)
que se encuentra disponible en el archivo LICENSE.txt adjunto.
Asegúrate de leer y comprender los términos de la licencia antes de
utilizar este código.
=end

require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module ServidorNormaEuclideana
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Enable CORS
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'  # Permite todas las solicitudes desde cualquier origen. Puedes ajustar esto según tus necesidades.
        resource '*', headers: :any, methods: [:get, :post, :options]  # Configura los métodos HTTP permitidos (GET, POST, OPTIONS) y los encabezados permitidos.
      end
    end
  end
end

