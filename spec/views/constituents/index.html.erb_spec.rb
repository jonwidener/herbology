require 'rails_helper'

RSpec.describe "constituents/index", type: :view do
  before(:each) do
    assign(:constituents, [
      Constituent.create!(),
      Constituent.create!()
    ])
  end

  it "renders a list of constituents" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
