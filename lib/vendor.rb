class Vendor
  attr_reader :name
              :stock
              :quantity
              :food_item
  
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def inventory
    @inventory
  end

  def stock(food_item, quantity)
    item = Item.new(name, quantity)
    @inventory << item
    inventory
  end

  def check_stock
    if @inventory[item]
      item[quantity]
    else
      0
    end
  end
end