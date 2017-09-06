class Category
  attr_accessor :name
  def to_json
    { name: @name }
  end
end
