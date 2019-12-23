require "kafka"
require "json"
require "sidekiq"
require "sidekiq/api"

require_relative "config/initializers/kafka"
require_relative "workers/sender"
