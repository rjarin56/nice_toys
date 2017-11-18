Rails.application.routes.draw do

  get 'about/index', to: 'about#index', as: 'about'

  get 'contact/index', to: 'contact#index', as: 'contact'

  get 'category/index', to: 'category#index', as: 'category_index'

  get 'category/:id', to: 'category#show', as: 'category', id: /\d+/

  get 'product/', to: 'product#index', as: 'product_index'

  get 'product/:id', to: 'product#show', as: 'product', id: /\d+/

  root to: 'home#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
