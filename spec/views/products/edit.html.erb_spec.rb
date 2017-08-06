require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :price => "9.99",
      :color => "MyString",
      :status => false,
      :type => "",
      :description => "MyText"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_color[name=?]", "product[color]"

      assert_select "input#product_status[name=?]", "product[status]"

      assert_select "input#product_type[name=?]", "product[type]"

      assert_select "textarea#product_description[name=?]", "product[description]"
    end
  end
end
