# frozen_string_literal: true

class ProjectContract < Dry::Validation::Contract
  params do
    required(:name).filled(:string)
  end
end
