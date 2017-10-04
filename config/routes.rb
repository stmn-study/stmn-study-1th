Rails.application.routes.draw do
  resources :views
  resources :supported_points
  resources :projects
  get  'home' => 'home#index'
end
