Rails.application.routes.draw do
 
  get '/activities/new' => 'activities#new'
  post '/activities' => 'activities#create'
  namespace :api do
    get '/activities' => 'activities#index'
    get 'activities/:id' => 'activities#show'
    post '/activities' => 'activities#create'
    patch '/activities/:id' => 'activities#update'
    delete 'activities/:id' => 'activities#destroy'

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'

    post '/itineraries' => 'itineraries#create'
    get '/itineraries' => 'itineraries#index'

    post '/wishlist_itineraries' => 'wishlist_itineraries#create'
    get '/wishlist_itineraries' => 'wishlist_itineraries#index'
    delete '/wishlist_itineraries' => 'wishlist_itineraries#destroy'
  end
end