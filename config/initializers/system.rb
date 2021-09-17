# frozen_string_literal: true

Dry::Rails.container do
  auto_register!('lib', 'app/operations')

  register(:user_repository, -> { UserRepository.new(ROM.env) })
  register(:project_repository, -> { ProjectRepository.new(ROM.env) })
end
