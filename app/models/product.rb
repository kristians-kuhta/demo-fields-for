class Product < ApplicationRecord
  has_many :products_customers
  has_many :customer, through: :products_customers
end
