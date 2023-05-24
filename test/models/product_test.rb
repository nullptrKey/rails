require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should not save product without a title" do
    product = Product.new
    assert_not product.save, "Saved the product without a title"
  end

  test "should save product with valid attributes" do
    fixtures :products
    #product = Product.new(title: "Example Product", description: "Example description", image_url: "example.jpg")
    assert products.save, "Failed to save the product with valid attributes"
  end
end
