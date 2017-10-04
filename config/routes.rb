Rails.application.routes.draw do
  resources :views
  resources :supported_points
  get  'home' => 'home#index'
end
