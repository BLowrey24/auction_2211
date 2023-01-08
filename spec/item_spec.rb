require './lib/item'

RSpec.describe Item do
  let(:item1) { Item.new('Chalkware Piggy Bank')}
  let(:item2) { Item.new('Bamboo Picture Frame')}
  let(:item3) { Item.new('Homemade Choclote Chip Cookies')}
  let(:item4) { Item.new('2 Days Dogsitting')}
  let(:item5) { Item.new('Forever Stamps')}


  let(:attendee1) { Attendee.new(name: 'Megan', budget: '$50')}
  let(:attendee2) { Attendee.new(name: 'Bob', budget: '$75')}
  
  describe '#initialize' do
    it 'exists' do
      expect(item1).to be_an_instance_of(Item)
    end

    it 'has attributes' do
      expect(item1.name).to eq('Chalkware Piggy Bank')
      expect(item1.bids).to eq({})
    end
  end

  describe '#add_bid' do
    it 'can add bid to items' do
      item1.add_bid(attendee2, 20)
      item1.add_bid(attendee1, 22)

      expect(item1.bids)to eq({attendee2 => 20, attendee1 => 22})
    end
  end
end