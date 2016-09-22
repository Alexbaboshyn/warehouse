Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :warehouses, only: [:index, :show, :create]

    resources :products, only: [:index]

    resource :order, only: [:create]
  end
end
