Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  	root 'workouts#index'
  end

  devise_scope :user do
  	get 'signup', to: 'devise/registrations#new'
  end

  resources :workouts do
  	resources :songs
  end
  

end
