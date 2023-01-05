require 'rails_helper'

RSpec.describe User do
  context 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:email) }
    it { should allow_value('augusto@email.com').for(:email)}
    # it { should define_enum_for(:type).with(customer: 'customer', courier: 'courier').backed_by_column_of_type(:string) }
   end

  context 'associations' do
    # it { should have_many(:orders) }
    it { should have_one(:address) }
  end
end

