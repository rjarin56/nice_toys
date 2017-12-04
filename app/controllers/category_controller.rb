class CategoryController < ApplicationController
  def index
    @categories = Category.order(:name)
  end

  def show
    @products = Product.where(category_id: params[:id])
                       .page(params[:page]).per(5)
  end
end
