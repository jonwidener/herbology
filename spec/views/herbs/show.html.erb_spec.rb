require 'rails_helper'

RSpec.describe "herbs/show", type: :view do
  before(:each) do
    assign(:herb, Herb.create!(latin_name: 'latin_name', common_names: ['common name'], description: 'description'))
  end

  it "renders attributes in <p>" do
    render
  end
end
