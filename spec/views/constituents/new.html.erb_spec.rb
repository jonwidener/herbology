require 'rails_helper'

RSpec.describe "constituents/new", type: :view do
  before(:each) do
    assign(:constituent, Constituent.new())
  end

  it "renders new constituent form" do
    render

    assert_select "form[action=?][method=?]", constituents_path, "post" do
    end
  end
end
