require 'rails_helper'

RSpec.describe "herbs/edit", type: :view do
  let(:herb) {
    Herb.create!()
  }

  before(:each) do
    assign(:herb, herb)
  end

  it "renders the edit herb form" do
    render

    assert_select "form[action=?][method=?]", herb_path(herb), "post" do
    end
  end
end
