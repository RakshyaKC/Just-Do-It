# frozen_string_literal: true

Rails.application.routes.draw do
  resources :workouts, except: %i[new edit]
  resources :videos, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  # Custom video routes
  get 'videos/thirty/alllevels' => 'videos#thirty_min_all_levels_videos'
  get 'videos/thirty/intermediate' => 'videos#thirty_min_intermediate_videos'
  get 'videos/fortyfive/alllevels' => 'videos#fortyfive_min_all_levels_videos'
  get 'videos/fortyfive/intermediate' => 'videos#fortyfive_min_intermediate_videos'
  get 'videos/sixty/alllevels' => 'videos#sixty_min_all_levels_videos'
  get 'videos/sixty/intermediate' => 'videos#sixty_min_intermediate_videos'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  delete '/delete' => 'users#destroy'
end
