class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @category = Category.includes(params[:products]).all
  end
end
