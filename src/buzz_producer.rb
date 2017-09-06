require 'kafka'
require 'application_helper'
require 'persistent_model'

# Application entry point
class BuzzProducer < PersistentModel

  def initialize(configuration)
    #TODO: Configuration is a hash with the system characteristics
  end
end
