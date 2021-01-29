require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        name: "Name"
      ),
      Character.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
