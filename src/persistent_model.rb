require 'kafka'
require 'json'
require 'application_helper'

module Properties
  BROKER_IP = '127.0.0.1'.freeze
  BROKER_PORT = '9092'.freeze
  BASE_TOPIC = 'first_topic'.freeze
end

# Base module for kafka persistence configuration
module KafkaPersistence
  KAFKA_BROKER = Kafka.new(seed_brokers:
      ["#{Properties::BROKER_IP}:#{Properties::BROKER_PORT}"]).freeze
  PRODUCER = KAFKA_BROKER.producer.freeze

  # TODO: Create async producer
  def self.push_data(topic, data)
    PRODUCER.produce(data, topic: topic)
    PRODUCER.deliver_messages
    PRODUCER.shutdown
  end

  # TODO: Create consumer for test purpose
end

# base class to tall kafka persistent models
class PersistentModel
  attr_accessor :topic

  def save!
    data = JSON.dump to_json
    KafkaPersistence.push_data(@topic, data)
    data
  end
end
