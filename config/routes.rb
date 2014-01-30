Flix::Application.routes.draw do

  
  root 'welcome#index'
  resources :movies

  end



