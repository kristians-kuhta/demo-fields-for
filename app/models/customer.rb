class Customer < ApplicationRecord
  has_many :products_customers
  has_many :products, through: :products_customers

  def product_ids=(p_ids)
    delete_irrelevant_products(p_ids)

    p_ids.reject(&:empty?).each do |p_id|
      product = Product.find(p_id)

      products_customer = products_customers.find_by(product: product)
      next if products_customer

      products_customers.build(product_id: p_id)
    end
  end


  private

  def delete_irrelevant_products(p_ids)
    products_customers.where.not(product_id: p_ids).destroy_all
  end
end
