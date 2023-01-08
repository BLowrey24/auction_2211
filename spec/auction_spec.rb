require './lib/auction'
require './lib/attendee'
require './lib/item'

RSpec.describe Auction do
  let(:auction) {Auction.new}
  
  let(:item1) { Item.new('Chalkware Piggy Bank')}
  let(:item2) { Item.new('Bamboo Picture Frame')}
  let(:item3) { Item.new('Homemade Choclote Chip Cookies')}
  let(:item4) { Item.new('2 Days Dogsitting')}
  let(:item5) { Item.new('Forever Stamps')}

  let(:attendee1) { Attendee.new(name: 'Megan', budget: '$50')}
  let(:attendee2) { Attendee.new(name: 'Bob', budget: '$75')}
  let(:attendee3) { Attendee.new(name: 'Mike', budget: '$100')}

  
  describe '#initialize' do
    it 'exists' do
      expect(auction).to be_an_instance_of(Auction)
    end

    it 'has attributes' do
      expect(auction.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'adds item to items array' do
      auction.add_item(item1)
      auction.add_item(item2)

      expect(auction.items).to eq([item1, item2])
    end

    it 'can look at #item_names' do
    require 'pry'; binding.pry
      auction.add_item(item1)
      auction.add_item(item2)

      expect(auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
    end
  end
end