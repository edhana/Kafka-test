require 'kafka'
require 'json'
require 'logger'

module Properties
  BROKER_IP = '127.0.0.1'.freeze
  BROKER_PORT = '9092'.freeze
  BASE_TOPIC = 'first_topic'.freeze
end

# base class to tall kafka persistent models
class PersistentModel
  attr_accessor :topic
  attr_reader :kafka

  protected :kafka
  APP_LOGGER = Logger.new(STDOUT)

  def initialize
    APP_LOGGER.level = Logger::INFO

    @kafka = Kafka.new(seed_brokers:
      ["#{Properties::BROKER_IP}:#{Properties::BROKER_PORT}"])

    APP_LOGGER.info("Teste do Logger")

    # TODO: Create an asyncproducerj
    @producer = @kafka.producer
  end

  def to_json
    self.to_s
  end

  def save!
    data = JSON.dump to_json
    @producer.produce(data, topic: @topic.to_s)
    @producer.deliver_messages

    # TODO: this is really necessary for a permanen producer
    @producer.shutdown
    data
  end
end
