class HomeController < ApplicationController
  def index
    @categories = Category.includes(:products).all
  end
end
