RSpec.describe Customer do
  context 'associations' do
    it { should have_many(:orders) }
  end
end
