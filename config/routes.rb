Rails.application.routes.draw do
  get '/beers' => 'web_client_beers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      get '/beers/:id' => 'beers#show'
      put '/beers/:id' => 'beers#update'
      delete '/beers/:id' => 'beers#destroy'
    end

    namespace :v2 do 
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      get '/beers/:id' => 'beers#show'
      put '/beers/:id' => 'beers#update'
      delete '/beers/:id' => 'beers#destroy'
    end
  end
end