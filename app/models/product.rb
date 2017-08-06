class Product < ApplicationRecord
	validates_presence_of :name, :type, :price, :inward_date, :description
	validates :name, format: {with: /\A[a-zA-Z\s\.']+\z/}, length: {minimum: 2, maximum: 20}
	validates :description, length: {minimum: 2, maximum: 100}
	validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
	scope :product_wise_price_sum, -> (type) { where(type: type).sum(:price)}
end
