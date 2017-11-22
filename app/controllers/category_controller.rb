class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end
  def show
    @products = Product.where(:category_id => params[:id])
  end
end
