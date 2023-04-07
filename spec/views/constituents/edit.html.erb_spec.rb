require 'rails_helper'

RSpec.describe "constituents/edit", type: :view do
  let(:constituent) {
    Constituent.create!()
  }

  before(:each) do
    assign(:constituent, constituent)
  end

  it "renders the edit constituent form" do
    render

    assert_select "form[action=?][method=?]", constituent_path(constituent), "post" do
    end
  end
end
