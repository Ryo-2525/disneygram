Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' }

  root to: 'homes#top'
  
  get '/about' => 'homes#about'

  resources :users, only: [:show] 
  
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
