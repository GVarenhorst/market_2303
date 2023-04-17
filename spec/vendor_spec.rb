require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do

  it 'exists' do

    vendor = Vendor.new("Rocky Mountain Fresh")

    expect(vendor).to be_an_instance_of(Vendor)
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
  end
end



# pry(main)> vendor.check_stock(item1)
# #=> 0

# pry(main)> vendor.stock(item1, 30)

# pry(main)> vendor.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}

# pry(main)> vendor.check_stock(item1)
# #=> 30

# pry(main)> vendor.stock(item1, 25)

# pry(main)> vendor.check_stock(item1)
# #=> 55

# pry(main)> vendor.stock(item2, 12)

# pry(main)> vendor.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
# ```