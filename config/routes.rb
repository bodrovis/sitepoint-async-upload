Rails.application.routes.draw do
  resources :photos, only: [:new, :create]
  get '/photos/new_multiple', to: 'photos#new_multiple', as: :new_photo_multiple
  root to: 'photos#new'
end
