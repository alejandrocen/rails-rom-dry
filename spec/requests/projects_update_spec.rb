# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'PUT /api/projects/:id' do
    let(:repository) { ProjectRepository.new(ROM.env) }
    let!(:project) { repository.create(name: 'Unicorn') }

    it do
      put("/api/projects/#{project.id}", params: { project: { name: 'Secret' } })

      expect(repository.by_id(project.id).name).to eq('Secret')
    end
  end
end
