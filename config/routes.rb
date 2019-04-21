Rails.application.routes.draw do
  namespace :api do
    get '/itineraries' => 'itineraries#index'
    get 'itineraries/:id' => 'itineraries#show'
    post '/itineraries' => 'itineraries#create'
    patch '/itineraries/:id' => 'itineraries#update'
    delete 'itineraries/:id' => 'itineraries#destroy'

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'

    post '/activities' => 'activities#create'
    get '/activities' => 'activities#index'

    post '/wishlist_itineraries' => 'wishlist_itineraries#create'
    get '/wishlist_itineraries' => 'wishlist_itineraries#index'
    delete '/wishlist_itineraries' => 'wishlist_itineraries#destroy'
  end
end