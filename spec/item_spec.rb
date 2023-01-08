require './lib/item'

RSpec.describe Item do
  let(:item1) { Item.new('Chalkware Piggy Bank')}
  
  describe '#initialize' do
    it 'exists' do
      expect(item1).to be_an_instance_of(Item)
    end

    it 'has attributes' do
      expect(item1.name).to eq('Chalkware Piggy Bank')
      expect(item1.bids).to eq({})
    end
  end
end