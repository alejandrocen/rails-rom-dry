# frozen_string_literal: true

module Api
  class ProjectsController < ApplicationController
    def index
      render json: repository.all
    end

    def show
      render json: repository.by_id(params[:id])
    end

    def create
      repository.create(project_params)

      head :created
    end

    def update
      repository.update(params[:id], project_params)

      head :ok
    end

    private

    def repository
      @repository ||= ProjectRepository.new(rom)
    end

    def project_params
      params.require(:project).permit(:name).to_h.symbolize_keys
    end
  end
end
