# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/projects#index'

  namespace :api do
    resources :projects, only: %i[index create]
  end
end
