require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "Product test" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test 'product price' do
    product = Product.new(    title: Faker::Commerce.product_name,
                              description: Faker::Lorem.paragraph,
                              image_url: Faker::Avatar.image,
    #price: Faker::Commerce.price(range: 1..100.0, as_string: true)
    )
    product.price = -1
    assert product.invalid?
    assert_equal ["test"],
                 product.errors[:price]
  end
end

