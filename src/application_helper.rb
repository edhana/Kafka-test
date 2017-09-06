require 'logger'

$LOAD_PATH.unshift File.expand_path('../../src', __FILE__)

APP_LOGGER = Logger.new(STDOUT)
APP_LOGGER.level = Logger::INFO
