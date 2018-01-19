require_relative './item_behavior'

##
# Backstage passes increases in Quality
# as its SellIn value approaches
class BackstagePasses < ItemBehavior
  def update
    case @item.sell_in
    when 0..6
      increase_quality = 3
    when 6..11
      increase_quality = 2
    else
      # AgedBrie, Backstage and Sulfuras increase 1 by default
      increase_quality = 1
    end
    update_quality(@item.quality + increase_quality)
  end

  def process_expired
    @item.quality = 0 if expired?
  end
end
