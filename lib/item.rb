class Item
  attr_reader :name
              :price
  
  def initialize(item)
    @name = item[:name]
    @price = item[:price]
  end

  def price
    new_price = @price.gsub(/[$"]/, '').to_f
    p new_price
  end
end