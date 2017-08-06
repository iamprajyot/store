require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :price => "9.99",
      :color => "Color",
      :status => false,
      :type => "Type",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
  end
end
