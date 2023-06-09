Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_out: 'logout',
    password: 'secret', confirmation: 'verification',
    registration: 'register', edit: 'edit/profile'
  }, sign_out_via: [:get, :post]

  resources :recipes, only: [:index, :new, :show, :update, :create, :destroy] do
    resources :recipe_foods, only:[:index, :new, :create, :edit, :destroy]
  end
  resources :users
  resources :foods, only: [:index, :show, :new, :edit,:create, :destroy]
  resources :public_recipes, only: [:index]
  resources :shopping_lists, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
end
