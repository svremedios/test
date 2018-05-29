Rails.application.routes.draw do


  get "/login" => "sessions#new"
  post "/sessions/create" => 'sessions#create'
  get "/logout" => "sessions#destroy"
  get "/reseed" => "application#reseed"
    
  get "/courses" => "courses#index"
  get "/courses/:id/delete" => "courses#destroy"
  get "/courses/:id" => "courses#details"
  
  get "/faculty" => "faculties#index"
  get "/faculty/:id/delete" => "faculties#destroy"
  get "/faculty/:id" => "faculties#details"
    
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  post "/users/create" => "users#create"
  get "/users/:id/delete" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/update" => "users#update"
    
  root :to => "courses#index"

end
