class CartController < ApplicationController
  def index
    @products_in_cart = Product.find(session[:add_to_cart])
  end

  def remove_all_products_from_cart
    session[:add_to_cart] = []

    redirect_to cart_index_path, notice: 'Shopping Cart is now empty.'
  end

  def remove_product_from_cart
    id = params[:id].to_i
    # render html: "<script>alert('#{id}')</script>".html_safe
    session[:add_to_cart].delete(id)

    redirect_to cart_index_path, notice: 'Item has been removed from the cart.'
  end

  def customer
    @province = Province.all
  end

  def invoice
    @province = Province.find(params[:province])
    @products_in_cart = Product.find(session[:add_to_cart])
    customer_data
  end

  def customer_data
    session[:customer_data] = { name: params[:name],
                                email: params[:email],
                                phone_number: params[:phone_number],
                                address: params[:address],
                                city: params[:city],
                                province: params[:province] }
  end

  def currency(amount)
    format('$%.2f', amount.round(2))
  end

  # def update_quantity
  #   # quantity =
  # end
end
