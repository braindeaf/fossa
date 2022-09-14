# frozen_string_literal: true
module Fossa
  class Railtie < Rails::Railtie
    initializer 'fossa.configure_rails_initialization' do
      Rails.application.middleware.use Fossa::Middleware
    end
  end
end
