require './lib/factory'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.map do |item|
      product = Factory.create_instance(item)
      product.update
      product.decrease_sell_in
      product.process_expired if item.sell_in < 0
    end
  end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end