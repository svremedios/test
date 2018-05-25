Rails.application.routes.draw do

    
    get "/books" => "books#index"
    get "/books/addnew" => "books#addnew"
    get "/books/create" => "books#create"
    post "/books/create" => "books#create"
    get "/books/reseed" => "books#reseed"
    get "/books/:id/delete" => "books#destroy"
    get "/books/:id" => "books#details"

    
    get "/stocks" => "stocks#index"
    get '/stocks/reseed' => 'stocks#reseed'
    get '/stocks/addnew' => 'stocks#addnew'
    get '/stocks/create' => 'stocks#create'
    get '/stocks/:id/delete' => 'stocks#destroy'
    get '/stocks/:id' => 'stocks#show'
    
    root :to => "books#index"

end
