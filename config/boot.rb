ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# Override default development
require 'rails/commands/server'

module Rails
  class Server
    def default_options
      super.merge({Port: 3100})
    end
  end
end
