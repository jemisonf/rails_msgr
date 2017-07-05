Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts do
    resources :replies
  end
  resources :users
  root "posts#index"
  get 'posts/:user' => 'posts#index', as: "user_posts"
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
  # post "/posts/:index/reply", to: "replies#create", as: "reply_to_post"
  # post "/replies/new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
