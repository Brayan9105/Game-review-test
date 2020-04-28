Rails.application.routes.draw do
  devise_for :users
  root 'games#index'

  resources :genres

  resources :games do
    member do
      put 'like' => 'games#like'
    end
  end

  post 'games/search'


end
