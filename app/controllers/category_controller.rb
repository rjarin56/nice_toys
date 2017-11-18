class CategoryController < ApplicationController
  def index
    @category = Category.includes(:products).all
  end
end
