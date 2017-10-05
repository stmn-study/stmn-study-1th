Rails.application.routes.draw do

  ################################
  #### devise向け
  ################################

  devise_for :users

  ################################
  #### user向け
  ################################

  get  'home' => 'home#index'

  resources :views
  resources :supported_points
  resources :projects

end
