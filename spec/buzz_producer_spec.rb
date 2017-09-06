require 'spec_helper'
require 'kafka'

describe BuzzProducer do
  it 'creates a basic BuzzProducer' do
    producer = BuzzProducer.new({
      ammount: 100,
      distribution: {
        hamburger: 30,
        combos: 30,
        sides: 40
      }
    })

    # TODO: Create a consumer to verify the response
    # kafka = Kafka.new(seed_brokers: ['127.0.0.1:9092'])
    # kafka.deliver_message('Hello World!', topic: 'first_topic')
    expect(true).to be_truthy
  end
end
