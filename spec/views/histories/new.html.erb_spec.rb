require 'rails_helper'

RSpec.describe "histories/new", type: :view do
  before(:each) do
    assign(:history, History.new(
      :comment => "MyText"
    ))
  end

  it "renders new history form" do
    render

    assert_select "form[action=?][method=?]", histories_path, "post" do

      assert_select "textarea[name=?]", "history[comment]"
    end
  end
end
