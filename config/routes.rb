Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
    resources :shopping_cart_item
  end
  get 'control-panel', to: 'users#show'
  resources :products, :patterns, :events
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
