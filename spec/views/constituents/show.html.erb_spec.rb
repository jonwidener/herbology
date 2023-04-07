require 'rails_helper'

RSpec.describe "constituents/show", type: :view do
  before(:each) do
    assign(:constituent, Constituent.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
