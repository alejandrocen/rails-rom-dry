# frozen_string_literal: true

module Projects
  class Project < ApplicationModel
    attribute :id, Types::Integer
    attribute :name, Types::String
  end
end
