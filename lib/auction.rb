class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    items << item
  end

  def item_names
    @items.map { |item| item.name }
  end

  def unpopular_items
    items.select {|item| item.bids.empty?}
  end

  def potential_revenue
    items.map(&:current_high_bid).compact.reduce(0, :+)
  end

  def bidders
    items.map(&:bids).flatten(1).map(&:first).uniq.compact
  end  
end