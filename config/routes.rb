Rails.application.routes.draw do
  devise_for :users

  get "/homes/about" => "homes#index", as: :about
  resources :post_images, only: [:new, :create, :index, :show]
  root to: "homes#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
