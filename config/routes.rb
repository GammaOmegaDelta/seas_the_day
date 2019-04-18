 Rails.application.routes.draw do
  namespace :api do
    get '/itineraries' => 'itineraries#index'
    get 'itineraries/:id' => 'itineraries#show'
    post '/itineraries' => 'itineraries#create'
    patch '/itineraries/:id' => 'itineraries#update'
    delete 'itineraries/:id' => 'itineraries#destroy'

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
end