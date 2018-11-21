# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :videos, only: %i[show update]
  # Users can only see specific video and update that video as watched.
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
