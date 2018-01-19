require_relative './aged_brie'
require_relative './backstage_passes'
require_relative './sulfuras'
require_relative './item_behavior'

##
# Class to create the correct product instance
class Factory
  def create_instance(item)
    case item.name
    when 'Aged Brie'
      AgedBrie.new(item)
    when 'Backstage passes to a TAFKAL80ETC concert'
      BackstagePasses.new(item)
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras.new(item)
    else
      ItemBehavior.new(item)
    end
  end
end