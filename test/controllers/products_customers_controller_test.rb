require "test_helper"

class ProductsCustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_customer = products_customers(:one)
  end

  test "should get index" do
    get products_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_products_customer_url
    assert_response :success
  end

  test "should create products_customer" do
    assert_difference("ProductsCustomer.count") do
      post products_customers_url, params: { products_customer: { customer_id: @products_customer.customer_id, product_id: @products_customer.product_id } }
    end

    assert_redirected_to products_customer_url(ProductsCustomer.last)
  end

  test "should show products_customer" do
    get products_customer_url(@products_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_customer_url(@products_customer)
    assert_response :success
  end

  test "should update products_customer" do
    patch products_customer_url(@products_customer), params: { products_customer: { customer_id: @products_customer.customer_id, product_id: @products_customer.product_id } }
    assert_redirected_to products_customer_url(@products_customer)
  end

  test "should destroy products_customer" do
    assert_difference("ProductsCustomer.count", -1) do
      delete products_customer_url(@products_customer)
    end

    assert_redirected_to products_customers_url
  end
end
