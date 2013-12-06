class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name_here, initial_sell, initial_qual)
    @name    = name_here
    @sell_in = initial_sell
    @quality = initial_qual
  end
end

def update_quality(items)
  items.each do |item|
    item.quality = if (item.sell_in == 0) || (item.sell_in == -10)
      item.quality-2 
    else
      item.quality-1
    end
    item.sell_in = item.sell_in-1
  end
end
