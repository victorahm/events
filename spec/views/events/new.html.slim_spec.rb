require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, build(:event))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[venue]"

      assert_select "input[name=?]", "event[address]"

      assert_select "input[name=?]", "event[city]"

      assert_select "input[name=?]", "event[state]"

      assert_select "input[name=?]", "event[country]"
    end
  end
end
