# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'DELETE /api/projects/:id' do
    let(:repository) { ProjectRepository.new(ROM.env) }
    let!(:project) { repository.create(name: 'Unicorn') }

    context do
      it do
        delete("/api/projects/#{project.id}")

        expect(response.status).to eq(204)
      end
    end
  end
end
