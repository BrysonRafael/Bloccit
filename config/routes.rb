Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  resources :users, only: [:confirm, :confirm]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
