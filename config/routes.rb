Rails.application.routes.draw do
  root to: "users#new"
  resources :users, only: [:new, :create]
  resources :quotations, only: [:show, :new, :create], param: :u_id
end
