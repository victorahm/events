require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:venue) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:event_at) }
  end

  it 'should create slug based on name' do
    event = create(:event, name: 'MyName')
    expect(event.slug).to eq('myname')
  end
end
