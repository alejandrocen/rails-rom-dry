# frozen_string_literal: true

module Projects
  class Create
    include Dry::Monads[:result]
    include Dry::Monads::Do.for(:call)
    include RailsRomDry::Deps[repository: :project_repository]

    def call(input)
      params = yield validate(input)
      persist(params.to_h)
    end

    def validate(input)
      ProjectContract.new.call(input).to_monad
    end

    def persist(input)
      project = repository.create(input)

      Success(project)
    end
  end
end
