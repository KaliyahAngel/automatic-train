Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  
  get 'store/index'
  resources :categories
  
  resources :products do
    get :who_bought, on: :member
  end
    

  root 'store#index', as: 'store'
end
