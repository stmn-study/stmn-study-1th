Rails.application.routes.draw do

  ################################
  #### devise向け
  ################################

  devise_for :users

  ################################
  #### user向け
  ################################

  root to: 'home#index'
  get  'home' => 'home#index'

  resources :views
  resources :supported_points
  resources :projects

end
