require 'json'

class BasicModel
  def to_json
    JSON.dump({ class_name: self.class.name })
  end

  def save!
    to_json
  end
end
