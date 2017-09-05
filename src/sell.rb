require 'json'
require 'kafka'


module Properties
  BROKER_IP = '127.0.0.1'.freeze
  BROKER_PORT = '9092'.freeze
  BASE_TOPIC = 'first_topic'.freeze
end

# Model representation of a sell
class Sell
  attr_accessor :topic, :sold_at, :items, :total_bill

  def initialize
  end

  def to_json
    JSON.dump(
      { topic: @topic, sold_at: @sold_at, items: @items, total_bill: @total_bill }
    )
  end

  def save!
    @kafka = Kafka.new(seed_brokers: ["#{Properties::BROKER_IP}:#{Properties::BROKER_PORT}"])
    @producer = @kafka.producer
    data = to_json
    @producer.produce(data, topic: "#{@topic}")
    @producer.deliver_messages
    @producer.shutdown
    data
  end
end
