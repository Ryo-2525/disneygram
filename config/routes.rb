Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' }

  root to: 'homes#top'

  get '/about' => 'homes#about'


  resources :users, only: [:show]

  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
