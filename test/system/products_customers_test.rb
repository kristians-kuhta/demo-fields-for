require "application_system_test_case"

class ProductsCustomersTest < ApplicationSystemTestCase
  setup do
    @products_customer = products_customers(:one)
  end

  test "visiting the index" do
    visit products_customers_url
    assert_selector "h1", text: "Products customers"
  end

  test "should create products customer" do
    visit products_customers_url
    click_on "New products customer"

    fill_in "Customer", with: @products_customer.customer_id
    fill_in "Product", with: @products_customer.product_id
    click_on "Create Products customer"

    assert_text "Products customer was successfully created"
    click_on "Back"
  end

  test "should update Products customer" do
    visit products_customer_url(@products_customer)
    click_on "Edit this products customer", match: :first

    fill_in "Customer", with: @products_customer.customer_id
    fill_in "Product", with: @products_customer.product_id
    click_on "Update Products customer"

    assert_text "Products customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Products customer" do
    visit products_customer_url(@products_customer)
    click_on "Destroy this products customer", match: :first

    assert_text "Products customer was successfully destroyed"
  end
end
