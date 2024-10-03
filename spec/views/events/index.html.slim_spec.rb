require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      create(:event, name: "Name1"),
      create(:event, name: "Name2")
    ])
  end

  it "renders a list of events" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Venue".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Country".to_s), count: 2
  end
end
