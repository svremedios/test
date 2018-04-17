Rails.application.routes.draw do

    get "/books" => "books#index"
    get "/details" => "books#details"

end
