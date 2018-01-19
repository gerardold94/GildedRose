require_relative './item_behavior'

# Sulfuras is a legendary item,
# never has to be sold or decreases in Quality
class Sulfuras
  def update; end

  def process_expired; end

  def decrease_sell_in; end
end
