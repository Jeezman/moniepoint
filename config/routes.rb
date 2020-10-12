Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :entries

  get '/all-entries' => 'entries#show'

  root 'entries#index'
end
