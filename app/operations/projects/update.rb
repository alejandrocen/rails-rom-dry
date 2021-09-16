# frozen_string_literal: true

module Projects
  class Update
    include Dry::Monads[:result]
    include Dry::Monads::Do.for(:call)
    include RailsRomDry::Deps[repository: :project_repository]

    def call(id, input)
      params = yield validate(input)
      persist(id, params.to_h)
    end

    def validate(input)
      ProjectContract.new.call(input).to_monad
    end

    def persist(id, input)
      project = repository.update(id, input)

      Success(project)
    end
  end
end
