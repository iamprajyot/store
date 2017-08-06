class Product < ApplicationRecord
	validates_presence_of :name, :type, :price, :inward_date, :description
	validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 100 }
	scope :product_wise_price_sum, -> (type) { where(type: type).sum(:price)}
end
