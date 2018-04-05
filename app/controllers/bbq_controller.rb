class BbqController < ApplicationController

  def new
  	@order = Order.new
  end

  def show
  end

  def order_params
    params.require(:order).permit(:customer, :address, :phone, :ribs, :brisket, :pork, :chicken, :fries, :potato)
  end

  def create  	
  	puts "-------------------- In create ---------------------"

  	customer = order_params[:customer]
  	address = order_params[:address]
  	phone = order_params[:phone]
  	ribs = order_params[:ribs].to_i
  	pork = order_params[:pork].to_i
  	brisket = order_params[:brisket].to_i
  	chicken = order_params[:chicken].to_i
  	fries = order_params[:fries].to_i
  	potato = order_params[:potato].to_i

    if ribs < 0 or pork < 0 or brisket < 0 or chicken < 0 or fries <0 or potato < 0
      redirect_to error_path
    else
      cost = ribs * 15.99 + pork * 9.99 + brisket * 10.99 + chicken* 9.99 + fries * 4.99 + potato * 2.99
      cost = sprintf('%.2f', cost)

      puts cost

      map = {"customer" => customer, "address" => address,
        "phone" => phone, "ribs" => ribs, "pork" => pork, 
        "brisket" => brisket, "chicken" => chicken, 
        "fries" => fries, "potato" => potato, "cost" => cost}
        
      @order = Order.new(map)
      if @order.save
        redirect_to the_path
      end
    end
  end
end
