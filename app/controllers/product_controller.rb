class ProductController < ApplicationController
  def index
    @products = Product.order([:product_name]).page(params[:page]).per(5)
    # @categories = Category.all
  end

  def show
    # @categories = Category.all
    @product = Product.find(params[:id])
  end

  def search_product
    @products = Product.order([:product_name]).page(params[:page]).per(5).search(params[:search], params[:category])
    @search = params[:search]
  end

end
