Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' }
  
  root to: 'posts#index'

  resources :users, only: [:show]

  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy], shallow: true
    resources :comments, only: [:index, :create, :destroy], shallow: true
  end
end
