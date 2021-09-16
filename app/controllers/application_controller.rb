# frozen_string_literal: true

class ApplicationController < ActionController::API
  def error!(error, status: :bad_request)
    render json: error, status: status
  end
end
