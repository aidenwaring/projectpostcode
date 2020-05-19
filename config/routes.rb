Rails.application.routes.draw do
  resources :posts
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#splash"

  get "/dashboard", to: "public#index"

  resources :accounts
end
