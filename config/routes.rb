# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[index new create]
  resources :sessions, only: %i[new create destroy]

  get '/', to: redirect('/posts')
  root 'posts#index'
end
