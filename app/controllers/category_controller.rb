class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @products = Product.all
    @category = Category.find_by(params[:id])
  end
end
