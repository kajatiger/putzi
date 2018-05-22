require 'rails_helper'

RSpec.describe "flatmates/edit", type: :view do
  before(:each) do
    @flatmate = assign(:flatmate, Flatmate.create!(
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit flatmate form" do
    render

    assert_select "form[action=?][method=?]", flatmate_path(@flatmate), "post" do

      assert_select "input[name=?]", "flatmate[name]"

      assert_select "input[name=?]", "flatmate[phone]"

      assert_select "input[name=?]", "flatmate[email]"

      assert_select "input[name=?]", "flatmate[password]"
    end
  end
end
