Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
 get '/get_weather/:weather_params' => 'itineraries#get_weather'
 root to: 'application#index'
  resources :users do
    resources :itineraries
  end

  get '/sessions/new' => 'sessions#new', as: 'login'
  post '/sessions/new' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  # CREATE custom GET/APICALL route to view result from api call
  # the below route will need to go above resources for priority
  # '/get_weather/:weather_params' => 'itineraries#get_weather'
end


