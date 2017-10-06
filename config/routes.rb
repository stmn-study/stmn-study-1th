Rails.application.routes.draw do

  resources :activities
  ################################
  #### devise向け
  ################################

  devise_for :users

  ################################
  #### user向け
  ################################

  root to: 'home#index'
  get  'home' => 'home#index'

  resources :users
  resources :views
  resources :supported_points
  resources :projects

end
