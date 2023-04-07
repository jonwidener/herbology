require 'rails_helper'

RSpec.describe "herbs/edit", type: :view do
  let(:herb) {
    Herb.create!(latin_name: 'latin', common_names: ['common'], description: 'description')
  }
  let(:all_constituents) {
    Constituent.all
  }

  before(:each) do
    assign(:herb, herb)
    assign(:all_constituents, all_constituents)
  end

  it "renders the edit herb form" do
    render

    assert_select "form[action=?][method=?]", herb_path(herb), "post" do
    end
  end
end
