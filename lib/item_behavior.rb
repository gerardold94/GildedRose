# Class to extend Item funcionality
class ItemBehavior
  MAX_QUALITY = 50

  def initialize(item)
    @item = item
  end

  def update
    update_quality(@item.quality - 1)
  end

  def update_quality(quality)
    @item.quality = quality <= MAX_QUALITY ? quality : 50
  end

  def decrease_quality
    @item.quality -= 1 if @item.quality > 0
  end

  def process_expired
    decrease_quality if expired?
  end

  def decrease_sell_in(item)
    @item.sell_in -= 1
  end

  def expired?
    @item.sell_in < 0
  end
end
