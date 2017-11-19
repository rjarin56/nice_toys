class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @products = Product.includes(params[:category_id])
  end
end
