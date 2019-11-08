Rails.application.routes.draw do

  resources :metrics
  resources :middles
  devise_for :users, controllers: { sessions: "users/sessions" }
  resources :students do
  	member do
  		get :standard
  	end
  end
  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
