class ProductController < ApplicationController
  def index
    if params[:search]
      @products = Product.page(params[:page]).per(5).search(params[:search], params[:category])
    else
      @products = Product.page(params[:page]).per(5)
    end
    # @categories = Category.all
  end

  def show
    # @categories = Category.all
    @product = Product.find(params[:id])
  end

end
