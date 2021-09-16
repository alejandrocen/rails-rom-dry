# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/projects#index'

  draw('api/projects')
end
