Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #resources :shipments, only: [:index,:show]
  root 'home#index'
  get 'tracking' => 'shipments#index'
  get 'search' => 'shipments#show'
  get 'inter' => 'home#inter'
  get 'baggage' => 'home#baggage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
