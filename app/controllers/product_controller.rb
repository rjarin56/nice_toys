class ProductController < ApplicationController
  before_action :initialize_session
  before_action :load_cart, only: %I[show index]

  def index
    @products = Product.order([:product_name]).page(params[:page]).per(5)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search_product
    @products = Product.order([:product_name])
                       .page(params[:page])
                       .per(5).search(params[:search],
                                      params[:category])
    @search = params[:search]
  end

  def add_to_cart
    id = params[:id].to_i
    session[:add_to_cart] << id unless session[:add_to_cart].include?(id)

    redirect_to product_index_path, notice: 'Item has been added to cart.'
  end

  def remove_product_from_cart
    id = params[:id].to_i
    session[:add_to_cart].delete(id)

    redirect_to product_index_path, notice: 'Item has been removed from the cart.'
  end

  private

  def initialize_session
    session[:add_to_cart] ||= []
  end

  def load_cart
    @products_in_cart = session[:add_to_cart]
  end
end
