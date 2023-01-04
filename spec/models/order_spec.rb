require 'rails_helper'

RSpec.describe Order do
  context 'validations' do
    it { should define_enum_for(:status).with(pending: 'pending', accepted: 'accepted', preparing: 'preparing',delivered: 'delivered') } 

    it { should validate_presence_of(:total_price) }
    
    it 'total price should be a decimal number' do
      expect(subject.total_price).to be_a_kind_of(Float) 
    end
  end

  context 'associations' do
    it { should belong_to(:costumer) }
    it { should belong_to(:courier) }
    it { have_many(:menu_items)}
  end
end