Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts

  get 'store/index'

  root :to => 'store#index', :as => 'store' #create store_path variable

  resources :products do
    get :who_bought, :on => :member
  end
  
end
