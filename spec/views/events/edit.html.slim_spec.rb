require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  let(:event) {
    create(:event)
  }

  before(:each) do
    assign(:event, event)
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(event), "post" do
      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[venue]"

      assert_select "input[name=?]", "event[address]"

      assert_select "input[name=?]", "event[city]"

      assert_select "input[name=?]", "event[state]"

      assert_select "input[name=?]", "event[country]"
    end
  end
end
