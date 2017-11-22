class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :retrieve_categories

  def retrieve_categories
    @categories = Category.all
  end
end
