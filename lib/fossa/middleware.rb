# frozen_string_literal: true
module Fossa
  class Middleware
    def initialize(app, &condition)
      @app = app
      @condition = condition
    end

    def call(env)
      return @app.call(env) unless @condition.nil? || @condition.call(env)

      log(env)

      @app.call(env)
    end

    private

    def log(env)
      request = Rack::Request.new(env)
      [:ip, :path, :user_agent, :referer].reduce(Log.new) do |log, k|
        log.send("#{k}=", request.send(k))
        log
      end.save
    end
  end
end
