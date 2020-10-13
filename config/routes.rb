Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :entries, only: [:index, :create]

  get '/all-entries' => 'entries#show'

  get '/entry/:id' => 'entries#location', as: :entry

  root 'entries#index'
end
