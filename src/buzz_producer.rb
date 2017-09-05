require 'kafka'

module Properties
  BROKER_IP = '127.0.0.1'.freeze
  BROKER_PORT = '9092'.freeze
  BASE_TOPIC = 'first_topic'.freeze
end

# Control the content production
class BuzzProducer
  extend Properties

  attr_reader :kafka

  def initialize
    @kafka = Kafka.new(
      seed_brokers: ["#{Properties::BROKER_IP}:#{Properties::BROKER_PORT}"]
    )
  end
end
