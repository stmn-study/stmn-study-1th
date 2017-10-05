Rails.application.routes.draw do
  devise_for :users
  resources :views
  resources :supported_points
  resources :projects
  get  'home' => 'home#index'
end
