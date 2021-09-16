# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'POST /api/projects' do
    context do
      it do
        post('/api/projects', params: { project: { name: 'Unicorn' } })

        expect(response.status).to eq(201)
      end
    end

    context do
      it do
        post('/api/projects', params: { project: { name: '' } })

        expect(response.status).to eq(422)
      end
    end
  end
end
