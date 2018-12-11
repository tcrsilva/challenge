require 'rails_helper'

RSpec.describe "histories/index", type: :view do
  before(:each) do
    assign(:histories, [
      History.create!(
        :comment => "MyText"
      ),
      History.create!(
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of histories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
