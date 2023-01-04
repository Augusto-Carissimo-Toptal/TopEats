require 'rails_helper'

RSpec.describe Vehicle do
  context 'validations' do
    it { should define_enum_for(:vehicle_type).with(:car, :bicycle, :motorcycle) } 
  end

  context 'associations' do
    it { should have_one(:courier) }
  end
end