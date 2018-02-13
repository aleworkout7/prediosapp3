module ApplicationHelper

	def is_in_cart? product
		return false if product.blank?

		cart = extract_cart_from_session

		cart.include? product.id.to_s
	end

	def amount_items_in_cart
		cart = extract_cart_from_session

		cart.count
	end

	private

	def extract_cart_from_session
		cart = session[:cart]

		cart = [] if cart.blank?

		cart
	end

end
