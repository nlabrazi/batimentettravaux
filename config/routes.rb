Rails.application.routes.draw do
  root to: 'roadworks#index'

  resources :roadworks, only: [:index, :show, :new, :create] do
    resources :projects, only: [:create]
  end
  resources :projects, only: [:destroy]
end
