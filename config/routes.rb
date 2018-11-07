Rails.application.routes.draw do
  resources :workouts do
  	resources :songs
  end
  root 'workouts#index'

end
