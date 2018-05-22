require 'rails_helper'

RSpec.describe "flatmates/index", type: :view do
  before(:each) do
    assign(:flatmates, [
      Flatmate.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :password => "Password"
      ),
      Flatmate.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of flatmates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
