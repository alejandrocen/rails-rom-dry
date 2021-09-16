# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'GET /api/projects/:id' do
    let(:repository) { ProjectRepository.new(ROM.env) }
    let!(:project) { repository.create(name: 'Unicorn') }

    it do
      get("/api/projects/#{project.id}")

      expect(response.status).to eq(200)
    end
  end
end
