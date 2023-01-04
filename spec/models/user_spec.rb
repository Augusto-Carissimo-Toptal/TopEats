require 'rails_helper'

RSpec.describe User do
  context 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:email) }
    it { should allow_value('augusto@email.com').for(:email)} 
  end

  context 'associations' do
    it { should have_many(:orders) }
    it { should have_one(:adress) }
  end
end