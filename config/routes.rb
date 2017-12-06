Rails.application.routes.draw do

  get 'about/index', to: 'about#index', as: 'about'

  get 'contact/index', to: 'contact#index', as: 'contact'

  get 'category/index', to: 'category#index', as: 'category_index'

  get 'category/:id', to: 'category#show', as: 'category', id: /\d+/

  get 'product/', to: 'product#index', as: 'product_index'

  post 'product/search_product', to: 'product#search_product', as: 'search_product'

  get 'product/:id', to: 'product#show', as: 'product', id: /\d+/

  # get 'cart/index', to: 'cart#index', as: 'cart_index'
  post 'cart/customer', to: 'cart#customer', as: 'customer'

  post 'cart/invoice', to: 'cart#invoice', as: 'invoice'

  # post 'charges/new', to: 'charges#new', as: 'new'

  resources :product, only: [:index] do
    member do
      post :add_to_cart
      post :remove_product_from_cart
    end
  end

  resources :cart, only: [:index] do
    member do
      post :remove_product_from_cart
      # post :update_quantity
    end

    collection do
      post :remove_all_products_from_cart
    end
  end

  resources :charges, only: [:new, :create] do
    member do
      post :new
      post :create
    end
  end

  root to: 'home#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
