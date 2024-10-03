require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    assign(:event, create(:event))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
  end
end
