def update_quality(item)

end


class Item
  #attr_accessor :initial_sell

  def initialize (name_here, initial_sell, initial_qual)
    name_here
    @initial_sell = 5
    initial_qual
  end

  def sell_in
    @initial_sell-1
  end

end