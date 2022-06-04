Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'entries#page'
  get '/entries', to: 'entries#index', as: 'entries'
  get '/entries/new', to: 'entries#new'
  get '/entries/:id', to: 'entries#show', as: 'entry'
  post '/entries', to: 'entries#create'
  get '/entries/:id/edit', to: 'entries#edit', as: 'edit'
  patch '/entries/:id', to: 'entries#update'
  delete '/entries/:id', to: 'entries#destroy'
end
