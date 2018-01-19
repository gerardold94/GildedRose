require_relative './item_behavior'

class Conjured < ItemBehavior
  def update
    update_quality(@item.quality - 2)
  end

  def process_expired
    2.times { decrease_quality } if expired?
  end
end
