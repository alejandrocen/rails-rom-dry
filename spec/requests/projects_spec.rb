# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'GET /api/projects' do
    context do
      it do
        get('/api/projects')

        expect(response.status).to eq(200)
      end
    end
  end

  describe 'POST /api/projects' do
    context do
      it do
        post('/api/projects', params: { project: { name: 'Unicorn' } })

        expect(response.status).to eq(201)
      end
    end
  end
end
