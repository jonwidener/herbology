require 'rails_helper'

RSpec.describe "herbs/index", type: :view do
  before(:each) do
    assign(:herbs, [
      Herb.create!(latin_name: 'latin', common_names: ['common'], description: 'description'),
      Herb.create!(latin_name: 'latin', common_names: ['common'], description: 'description')
    ])
  end

  it "renders a list of herbs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
