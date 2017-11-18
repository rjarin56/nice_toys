class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @products = @category.products
    @category = Category.find(params[:id])
  end
end
