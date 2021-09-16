# frozen_string_literal: true

module Api
  class ProjectsController < ApplicationController
    def index
      render json: repository.all
    end

    def create
      repository.create(create_params.to_h.symbolize_keys)

      head :created
    end

    private

    def repository
      @repository ||= ProjectRepository.new(rom)
    end

    def create_params
      params.require(:project).permit(:name)
    end
  end
end
