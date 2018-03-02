class Product < ActiveRecord::Base
	belongs_to :shop
	has_many :order_items, :dependent => :nullify

	validates :name, :shop_id, :price, presence: true, length: { maximum: 30 }
	validates :price, numericality: { greater_than: 0 }

	mount_uploader :image, ImageUploader

	def validate
		true
	end

end
