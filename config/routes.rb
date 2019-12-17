Rails.application.routes.draw do
  devise_for :users
  get 'groups/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index]
  end
end
