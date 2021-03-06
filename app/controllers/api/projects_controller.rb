# frozen_string_literal: true

module Api
  class ProjectsController < ApplicationController
    include RailsRomDry::Deps[
      create_project: 'projects.create',
      update_project: 'projects.update',
      repository: :project_repository
    ]

    def index
      render json: repository.all
    end

    def show
      render json: repository.by_id(params[:id])
    end

    def destroy
      project = repository.delete(params[:id])
      head :ok unless project
    end

    def create
      operation = create_project.call(project_params.to_h)
      return head :created if operation.success?

      error!(operation.failure.errors.to_h, status: :unprocessable_entity)
    end

    def update
      operation = update_project.call(params[:id], project_params.to_h)
      return head :ok if operation.success?

      error!(operation.failure.errors.to_h, status: :unprocessable_entity)
    end

    private

    def project_params
      params.require(:project).permit(:name)
    end
  end
end
