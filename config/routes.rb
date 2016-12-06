Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'control-panel', to: 'users#show'
  resources :products
  get 'news', to: 'pages#news'
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
