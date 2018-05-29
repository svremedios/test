Rails.application.routes.draw do


  get "/login" => "sessions#new"
  post "/sessions/create" => 'sessions#create'
  get "/logout" => "sessions#destroy"
  get "/reseed" => "application#reseed"
    
  get "/courses" => "courses#index"
  
  get "/faculty" => "faculties#index"
    
  get "/books" => "books#index"
  get "/books/addnew" => "books#addnew"
  get "/books/create" => "books#create"
  post "/books/create" => "books#create"
  get "/books/:id/delete" => "books#destroy"
  get "/books/:id" => "books#details"

  
  get "/stocks" => "stocks#index"
  get '/stocks/addnew' => 'stocks#addnew'
  get '/stocks/create' => 'stocks#create'
  get '/stocks/:id/delete' => 'stocks#destroy'
  get '/stocks/:id' => 'stocks#show'
  
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  post "/users/create" => "users#create"
  get "/users/:id/delete" => "users#destroy"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id/update" => "users#update"
    
  root :to => "courses#index"

end
