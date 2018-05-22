require 'rails_helper'

RSpec.describe "flatmates/show", type: :view do
  before(:each) do
    @flatmate = assign(:flatmate, Flatmate.create!(
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end
