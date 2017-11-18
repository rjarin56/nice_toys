class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @products = Product.all
    @category = Category.products.find(params[:id])
  end
end
