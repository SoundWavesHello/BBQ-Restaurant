class OrderController < ApplicationController
	def show
		puts("------------------- In Show Orders-----------------------")
		@allOrders = Order.all
	end

	def remove
		puts "------------------- In Remove Orders ---------------------"
  		target = params[:customerName]
  		Order.where(customer: target).destroy_all
  		redirect_to overview_path
	end
end
