Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_out: 'logout',
    password: 'secret', confirmation: 'verification',
    registration: 'register', edit: 'edit/profile'
  }, sign_out_via: [:get, :post]

  resources :recipes, only: [:index, :new, :show, :edit, :create, :destroy]
  resources :users
  resources :recipe_foods
  resources :foods, only: [:index, :show, :new, :edit,:create, :destroy]
  resources :public_recipes, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  put '/recipes/:id/toggle_privacy', to: 'recipes#toggle_privacy', as: 'toggle_privacy_recipe'
  put '/recipes/:id/toggle_shopping_tag', to: 'recipes#toggle_shopping_tag', as: 'toggle_shopping_tag'

  # Defines the root path route ("/")
  root "foods#index"
end
