# frozen_string_literal: true

Dry::Rails.container do
  register(:project_repository, -> { ProjectRepository.new(ROM.env) })
end
