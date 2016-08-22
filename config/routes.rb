Rails.application.routes.draw do
  get 'store/index'
  root :to => 'store#index', :as => 'store' #create store_path variable

  resources :users
  resources :orders
  resources :line_items
  resources :carts

  resources :products do
    get :who_bought, :on => :member
  end

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :delete 
  end

  get 'admin' => 'admin#index'

end
