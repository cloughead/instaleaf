Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :dispensaries
  devise_for :users, path: 'admin', controllers: { sessions: 'admin/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get 'maps' => 'pages#maps'
  get 'contact' => 'pages#contact'
  get 'markers' => 'maps#markers'

  namespace :admin do 
    resource :dashboard, controller: 'dashboard'
    root to: 'dashboard#index'
  end
end
