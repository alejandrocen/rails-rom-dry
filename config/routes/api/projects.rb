# frozen_string_literal: true

namespace :api do
  resources :projects, only: %i[index show create update]
end
