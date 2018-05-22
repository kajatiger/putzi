require 'rails_helper'

RSpec.describe "flatmates/new", type: :view do
  before(:each) do
    assign(:flatmate, Flatmate.new(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new flatmate form" do
    render

    assert_select "form[action=?][method=?]", flatmates_path, "post" do

      assert_select "input[name=?]", "flatmate[name]"

      assert_select "input[name=?]", "flatmate[phone]"

      assert_select "input[name=?]", "flatmate[email]"

      assert_select "input[name=?]", "flatmate[password]"
    end
  end
end
