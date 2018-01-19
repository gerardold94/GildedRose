require_relative './item_behavior'

class AgedBrie
  ##
  # Override update method
  # AgedBrie, Backstage and Sulfuras increase 1 instead of decreasing
  def update
    update_quality(@item.quality + 1)
  end

  def process_expired
    update_quality(@item.quality + 1) if expired?
  end
end
