require 'rails_helper'

RSpec.describe Adress do
  context 'validations' do
    it { should validate_presence_of(:address_field) } 
  end

  context 'associations' do
    it { should have_many(:users) }
  end
end