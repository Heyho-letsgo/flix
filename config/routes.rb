Flix::Application.routes.draw do
    resources :movies
      #get "movies" => "movies#index"
  root 'movies#index'

         end



