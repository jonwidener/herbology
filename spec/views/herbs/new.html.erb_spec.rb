require 'rails_helper'

RSpec.describe "herbs/new", type: :view do
  before(:each) do
    assign(:herb, Herb.new(latin_name: 'latin name', common_names: ['common name'], description: 'description'))
    assign(:all_constituents, Constituent.all)
  end

  it "renders new herb form" do
    render

    assert_select "form[action=?][method=?]", herbs_path, "post" do
    end
  end
end
