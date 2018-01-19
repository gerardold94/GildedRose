require_relative './aged_brie'
require_relative './backstage_passes'
require_relative './sulfuras'
require_relative './item_behavior'

##
# Class to create the correct product instance
class Factory
  PRODUCTS = {
    'Aged Brie' => AgedBrie,
    'Backstage passes to a TAFKAL80ETC concert' => BackstagePasses,
    'Sulfuras, Hand of Ragnaros' => Sulfuras
  }

  def self.create_instance(item)
    type = PRODUCTS[item.name]
    type ? type.new(item) : ItemBehavior.new(item)
  end
end
