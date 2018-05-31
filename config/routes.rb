Rails.application.routes.draw do

  devise_for :users
  #User Authentication
  post 'user_token' => 'user_token#create'

  #User Profile
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  post '/users' => 'users#create'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  #Likes
  get '/likes' => 'likes#index'
  # get '/likes/:id' => 'likes#show'
  post '/likes' => 'likes#create'
  # patch '/likes/:id' => 'likes#update'
  delete '/likes/:id' => 'likes#destroy'

  #Messages
  get '/messages' => 'messages#index'
  post '/messages' => 'messages#create'
  delete '/messages/:id' => 'messages#destroy'

  #Conversations
  get '/conversations' => 'conversations#index'
  # get '/conversations/:id' => 'conversations#show'
  post '/conversations' => 'conversations#create'
  delete '/conversations/:id' => 'conversations#destroy'
end









